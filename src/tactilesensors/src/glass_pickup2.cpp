#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>
#include <tf/transform_datatypes.h>
#include <moveit/trajectory_execution_manager/trajectory_execution_manager.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseStamped.h>
#include <std_msgs/String.h>
#include <sstream>
#include <math.h>
#include <iostream>
#include <fstream>
#include <robotiq_s_model_control/SModel_robot_input.h>
#include <robotiq_s_model_control/SModel_robot_output.h>
#include "std_msgs/Int32MultiArray.h"
#include "std_msgs/Float64.h"
#include <stdlib.h>

//Global variables: Gripper parameters
uint8_t gACT  = 0;
uint8_t gGTO  = 0;
uint8_t gPRA  = 0;
uint8_t gSTA  = 0;
uint8_t gOBJ  = 0;
uint8_t gPR = 0;
uint8_t gPOA = 0;

//Gripper publisher
ros::Publisher gripper_publisher;
robotiq_s_model_control::SModel_robot_output gripper_command;


bool bComputeMean = false;
int iMeanCount;
std::vector<int> iSumGlobal(12);
std::vector<int> iMeanGlobal(12);

bool bGetDynamicData = false;
double fGlobalVal;



void gripper_input_callback(const robotiq_s_model_control::SModel_robot_input::ConstPtr& msg)
{
    //Synchronise les valeurs provenant de la pince
    gGTO  = msg->gGTO;
    gSTA  = msg->gSTA;
    gPRA  = msg->gPRA;
    gPOA  = msg->gPOA;

    //	gOBJ  = msg->gOBJ;
    //	gPR = msg->gPR;
    //	gPO = msg->gPO;

    //ROS_DEBUG("gOBJ = %d", msg->gOBJ);
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
        std::cout << "We are in the static callback" << std::endl;
        //First iteration
        //	if (iMeanCount==0)
        //	{
        int iter=0;
        for(std::vector<int>::const_iterator it = msg->data.begin(); it != msg->data.end(); ++it)
        {
            //iSumGlobal[iter] = *it;
            iMeanGlobal[iter] = *it;
            iter++;
        }
        iMeanCount++;
        bComputeMean = false;
        /*	}
        else
        {

            int iter=0;
            for(std::vector<int>::const_iterator it = msg->data.begin(); it != msg->data.end(); ++it)
            {
                iSumGlobal[iter] += *it;
                iter++;
            }

            iMeanCount++;

            if (iMeanCount>=5)
            {

                int iter=0;
                for(std::vector<int>::const_iterator it = msg->data.begin(); it != msg->data.end(); ++it)
                {
                    iMeanGlobal[iter] = iSumGlobal[iter] / iMeanCount;
                    iter++;
                }

                bComputeMean = false;
            }
        }
        */
    }
}

void dynamicdataCallback(const std_msgs::Float64::ConstPtr &msg)
{

    if(bGetDynamicData)
    {
        //ROS_INFO("We have received dynamic data: [%f]", msg->data);
        fGlobalVal = msg->data;
//        printf("This is that value: %f \n", fGlobalVal);
        bGetDynamicData = false;
    }
}


int main(int argc, char **argv)
{
    int i = 0;
    ros::init(argc, argv, "glass_pickup__demo");
    ros::NodeHandle node_handle;

    ros::Subscriber sub = node_handle.subscribe("TactileSensor/StaticData", 1000, staticdataCallback);
    ros::Subscriber sub2 = node_handle.subscribe("TactileSensor/DynamicData", 1000, dynamicdataCallback);

    //ros::spinOnce();

    ros::AsyncSpinner spinner(1);
    spinner.start();

    //No contact taxel Mean
    std::vector<int> iZeroMean(12);
    bool bStopHand = false;
    int iTotalDeviation;

    //Publisher for the gripper
    gripper_publisher = node_handle.advertise<robotiq_s_model_control::SModel_robot_output> ("/SModelRobotOutput", 1);

    //Reset la pince
    gripper_command.rACT = 0;

    ROS_INFO("RESETING THE EFFECTOR");
    //Publish the command
    gripper_publisher.publish(gripper_command);

    ros::Duration(1.0).sleep();

    //Activation de la pince
    gripper_command.rACT = 1;
    gripper_command.rGTO = 1;
    gripper_command.rSPA = 255;
    gripper_command.rFRA = 255;
    gripper_command.rMOD = 1;

    ROS_INFO("ACTIVATING THE EFFECTOR");
    //Publish the command
    gripper_publisher.publish(gripper_command);
    ros::Duration(1.0).sleep();
    getchar();
    gripper_command.rSPA = 255;
    gripper_command.rPRA = 255;
    gripper_publisher.publish(gripper_command);

    while(ros::ok())
    {
        ROS_INFO("%1.7f",fGlobalVal);
        bGetDynamicData = true;
        while (bGetDynamicData==true) // Wait computation
        {
        }
//        printf("This is the value we read: %f \n",fabs(fGlobalVal));
        if ((fabs(fGlobalVal))>0.0085)
        {
            ROS_INFO("Contact detected: %1.7f",fGlobalVal);
//            gripper_command.rGTO = 0;
//            gripper_publisher.publish(gripper_command);
//            bStopHand = true;
        }
    }
    ROS_INFO("STOPPING HAND ! ");
    getchar();
    ros::shutdown();
    return 0;
}

