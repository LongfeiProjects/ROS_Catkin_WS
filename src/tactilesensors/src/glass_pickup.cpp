#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>
#include <tf/transform_datatypes.h>
#include <moveit/trajectory_execution_manager/trajectory_execution_manager.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <std_msgs/String.h>
#include <sstream>
#include <math.h>
//#include <PartLocation/CalPosition.h>
//#include <PartLocation/ObjPosition.h>
#include <iostream>
#include <fstream>
#include <robotiq_s_model_control/SModel_robot_input.h>
#include <robotiq_s_model_control/SModel_robot_output.h>
#include "std_msgs/Int32MultiArray.h"
#include "std_msgs/Float64.h"
#include <stdlib.h>


//Variables de la pince
uint8_t gACT  = 0;
uint8_t gGTO  = 0;
uint8_t gPRA  = 0;
uint8_t gSTA  = 0;
uint8_t gOBJ  = 0;
uint8_t gPR = 0;
uint8_t gPOA = 0;

//Publisher de la pince
ros::Publisher gripper_publisher;
robotiq_s_model_control::SModel_robot_output gripper_command;


bool bComputeMean = false;
bool bGetDynamicData = false;
double fGlobalVal;
int iMeanCount;
int NumberOfTaxels=0;
int Force;
double ThresholdPercentage=0.35; // 15%
double Kp=1,Ki=0,Kd=0;
std::vector<int> iSumGlobal(12);
std::vector<int> iMeanGlobal(12);


/*****************************************************************************************
//Function: cmdOptionExists
//
//Description:  This function check a string starting at **begin up to **end and tries
//              to find the string defined by the argument &option. If it finds it, then
//              it returns true, otherwise it will return false.
//
*****************************************************************************************/
bool cmdOptionExists(char** begin, char** end, const std::string& option)
{
    return std::find(begin, end, option) != end;
}

void gripper_input_callback(const robotiq_s_model_control::SModel_robot_input::ConstPtr& msg)
{
    //Synchronise les valeurs provenant de la pince
    gGTO  = msg->gGTO;
    gSTA  = msg->gSTA;
    gPRA  = msg->gPRA;
    gPOA  = msg->gPOA;
}

std_msgs::String msgCurrentPose(geometry_msgs::PoseStamped pose)
{
    // Set the pose variable
    std_msgs::String msg;
    std::stringstream ss;

    ss << "x=" << pose.pose.position.x << " y=" << pose.pose.position.y << " z=" << pose.pose.position.z;
    msg.data = ss.str();

    return msg;
}


void staticdataCallback(const std_msgs::Int32MultiArray::ConstPtr &msg)
{
    //If we asked to compute Mean
    if (bComputeMean)
    {
        int iter=0;
        for(std::vector<int>::const_iterator it = msg->data.begin(); it != msg->data.end(); ++it)
        {
            //iSumGlobal[iter] = *it;
            iMeanGlobal[iter] = *it;
            iter++;
        }
        NumberOfTaxels=iter;
        iMeanCount++;
        bComputeMean = false;
    }
}

void dynamicdataCallback(const std_msgs::Float64::ConstPtr &msg)
{
    if(bGetDynamicData)
    {
        fGlobalVal = msg->data;
        bGetDynamicData = false;
    }
}


int main(int argc, char **argv)
{
    // start tactile sensor node:
    int ReturnCode;
    ReturnCode = system("rosrun tactilesensors PollData -sensor 1 -data dynamic &");
    int i = 0;
    bool bStopHand = false;
    ros::init(argc, argv, "glass_pickup__demo");
    ros::NodeHandle node_handle;
    ros::Subscriber substatic = node_handle.subscribe("TactileSensor/StaticData", 1000, staticdataCallback);
    ros::Subscriber subdynamic = node_handle.subscribe("TactileSensor/DynamicData", 1000, dynamicdataCallback);
    //Souscrit a l'etat du gripper
    ros::Subscriber sub_gripper_input = node_handle.subscribe("/SModelRobotInput", 1, gripper_input_callback);
    ros::AsyncSpinner spinner(1);
    spinner.start();

    //Parsing the "sensor" option from command line:
    if(cmdOptionExists(argv, argv+argc, "-force"))
    {
        Force=atoi(argv[2]);
    }
    //Publisher for the gripper
    gripper_publisher = node_handle.advertise<robotiq_s_model_control::SModel_robot_output> ("/SModelRobotOutput", 1);



    //Activation de la pince
    gripper_command.rACT = 1;
    gripper_command.rGTO = 1;
    gripper_command.rSPA = 150;
    gripper_command.rFRA = 255;
    gripper_command.rMOD = 1;

    ROS_INFO("ACTIVATING THE EFFECTOR");
    //Publish the command
    gripper_publisher.publish(gripper_command);
    ros::Duration(1.0).sleep();
    //    getchar();




    gripper_command.rSPA = 5;
    gripper_command.rPRA = 255;
    gripper_publisher.publish(gripper_command);

    while(bStopHand==false)
    {
        bGetDynamicData = true;
        while (bGetDynamicData==true) // Wait computation
        {
        }
        ROS_INFO("Dynamic Data Value = %1.6f", fGlobalVal);
        //     printf("This is the value we read: %f \n",fabs(fGlobalVal));
        if ((fabs(fGlobalVal))>0.0085)
        {
            gripper_command.rGTO = 0;
            gripper_publisher.publish(gripper_command);
            bStopHand = true;
        }
    }

    ReturnCode =system("echo RonRon26 | sudo -b -S pkill -9 PollData");

    ROS_INFO("Dynamic data should be killed");
    //    getchar();
    ReturnCode = system("rosrun tactilesensors PollData -sensor 1 &");

    ROS_INFO("Static data should be active");
    //    getchar();



    //No contact taxel Mean
    std::vector<int> iZeroMean(12);
    int iTotalDeviation;

    for(int i=0; i<NumberOfTaxels; i++)
    {
        iZeroMean[i] = 0;
        iMeanGlobal[i] = 0;

    }

    //Get "zero" Mean values
    bComputeMean = true;
    while (bComputeMean==true) // Wait computation
    {
    }

    for(int i=0; i<NumberOfTaxels; i++)
    {
        iZeroMean[i] = iMeanGlobal[i];
        printf("%i \t",iZeroMean[i]);

    }

    printf("\n\n");



    ROS_INFO("Execute static compensation of force");
    //    getchar();

    gripper_command.rSPA = 1;
    gripper_command.rPRA = gPOA;
    gripper_command.rGTO = 1;

    ROS_INFO("Current gPOA : %d",gPOA);

    gripper_publisher.publish(gripper_command);

    bStopHand = false;

    while(ros::ok() and bStopHand==false)
    {
        iTotalDeviation = 0;
        for(int i=0; i<NumberOfTaxels; i++)
        {
            iMeanGlobal[i] = 0;
        }

        bComputeMean = true;
        while (bComputeMean==true) // Wait computation
        {
        }

        for(int i=0; i<NumberOfTaxels; i++)
        {
            iTotalDeviation += (abs(iZeroMean[i] - iMeanGlobal[i]));

        }

        if (iTotalDeviation>(Force+Force*ThresholdPercentage))
        {
            //            gripper_command.rGTO = 0;
            ROS_INFO("Excessive force detected! Current rPRA= %i",gripper_command.rPRA);
            if (round(gripper_command.rPRA-Kp*1)>=0)
            {
                gripper_command.rPRA = round(gripper_command.rPRA-Kp*1);
            }
            gripper_publisher.publish(gripper_command);
            // bStopHand = true;
        }
        else if(iTotalDeviation<(Force-Force*ThresholdPercentage))
        {
            //            gripper_command.rGTO = 0;
            ROS_INFO("Weak force detected! Current rPRA= %i",gripper_command.rPRA);
            if (round(gripper_command.rPRA-Kp*1)<=255)
            {
                gripper_command.rPRA = round(gripper_command.rPRA+Kp*1);
            }
            gripper_publisher.publish(gripper_command);
            // bStopHand = true;
        }
        else
        {
            bStopHand = true;
            ROS_INFO("HOLDING FORCE !");
        }
        ros::spinOnce();
    }

    ROS_INFO("STOPPING HAND ! ");
    //    getchar();
    ros::Duration(0.5).sleep();


    ReturnCode =system("echo RonRon26 | sudo -b -S pkill -9 PollData");

    ROS_INFO("Static data should be killed");
    //    getchar();
//    ReturnCode = system("rosrun tactilesensors PollData -sensor 1 -data dynamic &");

//    ROS_INFO("Dynamic data should be active");
//    //    getchar();



//    gripper_command.rSPA = 1;
//    gripper_command.rFRA = 255;
//    gripper_command.rPRA = gPOA;
//    gripper_command.rGTO = 1;

//    bStopHand = false;


//    while(bStopHand==false)
//    {
//        bGetDynamicData = true;
//        while (bGetDynamicData==true) // Wait computation
//        {
//        }
//        //printf("This is the value we read: %f \n",fabs(fGlobalVal));
//        if ((fabs(fGlobalVal))>0.01)
//        {
//            ROS_INFO("STOP PULLING ! THE BALOON IS MINE !!!");
//            gripper_command.rPRA = gPOA + 4;
//            gripper_publisher.publish(gripper_command);
//            ros::Duration(0.1).sleep();

//            //bStopHand = true;
//        }
//    }






    ros::shutdown();
    return 0;
}

