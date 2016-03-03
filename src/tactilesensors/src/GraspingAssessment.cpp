/****************************************************************************************
//GraspingAssessment V1.1
//Author: Jean-Philippe Roberge Ing, M.Sc.A.
//Date: June 10th 2015
//Affiliations: Laboratoire de commande et de robotique (École de technologie supérieure)
//
//Description:  GraspingAssessment.cpp - DESCRIPTION TO FILL
//
//Synopsis:     rosrun tactilesensors GraspingAssessment
//
//______________________________________________________________________________________
//Version: 1.0 : June 10th 2015
//
//Last Modified: June 10th 2015 - Initial release
****************************************************************************************/

#include "ros/ros.h"
#include "tactilesensors/StaticData.h"
#include <robotiq_s_model_control/SModel_robot_input.h>
#include <robotiq_s_model_control/SModel_robot_output.h>


// GLOBAL VARIABLES:
//Gripper variables:
uint8_t gACT  = 0;
uint8_t gGTO  = 0;
uint8_t gPRA  = 0;
uint8_t gSTA  = 0;
uint8_t gOBJ  = 0;
uint8_t gPR = 0;
uint8_t gPOA = 0;

int MaxNumberOfIterations =8; //Needs to be an even number so sensors will be acquired same number of times

std::vector<tactilesensors::StaticData> SensorsInitialValue(10);
bool FirstPassInStaticCallback = true;
std::vector<tactilesensors::StaticData> RealSensorsValue(10);

//Publisher de la pince
ros::Publisher gripper_publisher;
robotiq_s_model_control::SModel_robot_output gripper_command;


void gripper_input_callback(const robotiq_s_model_control::SModel_robot_input::ConstPtr& msg)
{
    //Synchronise les valeurs provenant de la pince
    gGTO  = msg->gGTO;
    gSTA  = msg->gSTA;
    gPRA  = msg->gPRA;
    gPOA  = msg->gPOA;
//    printf("gPOA: [%i]\n",gPOA);
}

void staticdataCallback(const tactilesensors::StaticData::ConstPtr &msg, std::vector<tactilesensors::StaticData> *Sensors, int *Num_iter)
{

    (*Num_iter)++;
    if ((*Num_iter)<=MaxNumberOfIterations)
    {
        (*Sensors)[(int)(msg->SensorID)-1]=(*msg); // We assign Static Data to Sensors Array
        for(int i=0;i<msg->Data.thedata.size();i++)
        {
//            ROS_INFO("We have received static data: [%i] from sensor [%i] taxel [%i]", msg->Data.thedata[i],msg->SensorID,i );
            if (FirstPassInStaticCallback)
            {
                SensorsInitialValue[msg->SensorID-1].Data.thedata[i]=SensorsInitialValue[msg->SensorID-1].Data.thedata[i]+msg->Data.thedata[i];
            }
            else
            {
                (*Sensors)[(int)(msg->SensorID)-1].Data.thedata[i]=(*Sensors)[(int)(msg->SensorID)-1].Data.thedata[i]-SensorsInitialValue[msg->SensorID-1].Data.thedata[i];
                ROS_INFO("This is the adjusted static data: [%i] from sensor [%i] taxel [%i], Init: [%i]", (*Sensors)[(int)(msg->SensorID)-1].Data.thedata[i],msg->SensorID,i ,SensorsInitialValue[msg->SensorID-1].Data.thedata[i]);
                RealSensorsValue[msg->SensorID-1].Data.thedata[i]=RealSensorsValue[msg->SensorID-1].Data.thedata[i]+(*Sensors)[(int)(msg->SensorID)-1].Data.thedata[i];
            }
        }
    }
    else
    {
        FirstPassInStaticCallback=false;
    }
//    printf("Num of iter: %i\n",(*Num_iter));
}

bool IsGraspingOK(std::vector<tactilesensors::StaticData> Sensors)
{
    int TipSumFinger1,MiddleLSumFinger1,BottomSumFinger1,TipSumFinger2,MiddleLSumFinger2,BottomSumFinger2,TipSumFinger3,MiddleLSumFinger3,BottomSumFinger3,TotalSumFinger1;
    int LeftSumFinger1,MiddleCSumFinger1,RightSumFinger1,LeftSumFinger2,MiddleCSumFinger2,RightSumFinger2,LeftSumFinger3,MiddleCSumFinger3,RightSumFinger3,TotalSumFinger2;

    TipSumFinger1=Sensors[0].Data.thedata[8]+Sensors[0].Data.thedata[5]+Sensors[0].Data.thedata[2];
    TipSumFinger2=Sensors[3].Data.thedata[8]+Sensors[3].Data.thedata[5]+Sensors[3].Data.thedata[2];
    MiddleLSumFinger1=Sensors[0].Data.thedata[7]+Sensors[0].Data.thedata[4]+Sensors[0].Data.thedata[1];
    MiddleLSumFinger2=Sensors[3].Data.thedata[7]+Sensors[3].Data.thedata[4]+Sensors[3].Data.thedata[1];
    BottomSumFinger1=Sensors[0].Data.thedata[6]+Sensors[0].Data.thedata[3]+Sensors[0].Data.thedata[0];
    BottomSumFinger2=Sensors[3].Data.thedata[6]+Sensors[3].Data.thedata[3]+Sensors[3].Data.thedata[0];
    LeftSumFinger1=Sensors[0].Data.thedata[8]+Sensors[0].Data.thedata[7]+Sensors[0].Data.thedata[6];
    TotalSumFinger1=TipSumFinger1+MiddleLSumFinger1+MiddleLSumFinger1;
    LeftSumFinger2=Sensors[3].Data.thedata[8]+Sensors[3].Data.thedata[7]+Sensors[3].Data.thedata[6];
    MiddleCSumFinger1=Sensors[0].Data.thedata[5]+Sensors[0].Data.thedata[4]+Sensors[0].Data.thedata[3];
    MiddleCSumFinger2=Sensors[3].Data.thedata[5]+Sensors[3].Data.thedata[4]+Sensors[3].Data.thedata[3];
    RightSumFinger1=Sensors[0].Data.thedata[2]+Sensors[0].Data.thedata[1]+Sensors[0].Data.thedata[0];
    RightSumFinger2=Sensors[3].Data.thedata[2]+Sensors[3].Data.thedata[1]+Sensors[3].Data.thedata[0];
    TotalSumFinger2=TipSumFinger2+MiddleLSumFinger2+MiddleLSumFinger2;


    //Now, we start the tests:
    // FINGER TIP TESTS:
    ROS_INFO("FINGER 1 & 2, TIP TEST 1 - TESTED VALUE: [%2.6f] >? 0.3\n",(double)(TipSumFinger1+TipSumFinger2)/(TipSumFinger1+TipSumFinger2+MiddleLSumFinger1+MiddleLSumFinger2+BottomSumFinger1+BottomSumFinger2+LeftSumFinger1+LeftSumFinger2+MiddleCSumFinger1+MiddleCSumFinger2+RightSumFinger1+RightSumFinger2));
    if((double)(TipSumFinger1+TipSumFinger2)/(TipSumFinger1+TipSumFinger2+MiddleLSumFinger1+MiddleLSumFinger2+BottomSumFinger1+BottomSumFinger2+LeftSumFinger1+LeftSumFinger2+MiddleCSumFinger1+MiddleCSumFinger2+RightSumFinger1+RightSumFinger2)>0.3)
    {
        return false; // We are holding the object to much at the tip of the fingers
    }
    ROS_INFO("FINGER 1, TIP TEST 2 - TESTED VALUE: [%2.6f] >? 0.66\n",(double)TipSumFinger1/(TipSumFinger1+MiddleLSumFinger1+BottomSumFinger1));
    if ((double)TipSumFinger1/(TipSumFinger1+MiddleLSumFinger1+BottomSumFinger1)>0.66)
    {
        return false;
    }
    ROS_INFO("FINGER 2, TIP TEST 3 - TESTED VALUE: [%2.6f] >? 0.7\n",(double)TipSumFinger2/(TipSumFinger2+MiddleLSumFinger2+BottomSumFinger2));
    if ((double)TipSumFinger2/(TipSumFinger2+MiddleLSumFinger2+BottomSumFinger2)>0.7)
    {
        return false;
    }

    //OTHER FINGER EDGES TESTS:
    ROS_INFO("FINGER 1, EDGE TEST 1 - TESTED VALUE: [%2.6f] >? 0.5\n",(double)LeftSumFinger1/(LeftSumFinger1+MiddleCSumFinger1+RightSumFinger1));
    if ((double)LeftSumFinger1/(LeftSumFinger1+MiddleCSumFinger1+RightSumFinger1)>0.5)
    {
        return false;
    }
    ROS_INFO("FINGER 1, EDGE TEST 2 - TESTED VALUE: [%2.6f] >? 0.65\n",(double)RightSumFinger1/(LeftSumFinger1+MiddleCSumFinger1+RightSumFinger1));
    if ((double)RightSumFinger1/(LeftSumFinger1+MiddleCSumFinger1+RightSumFinger1)>0.65)
    {
        return false;
    }
    ROS_INFO("FINGER 2, EDGE TEST 3 - TESTED VALUE: [%2.6f] >? 0.80\n",(double)RightSumFinger2/(LeftSumFinger2+MiddleCSumFinger2+RightSumFinger2));
    if ((double)RightSumFinger2/(LeftSumFinger2+MiddleCSumFinger2+RightSumFinger2)>0.80)
    {
        return false;
    }

    //FINGER CORNER TESTS:
    ROS_INFO("FINGER 1, CORNER TEST 1 - TESTED VALUE: [%2.6f] >? 0.22\n",(double)Sensors[0].Data.thedata[8]/TotalSumFinger1);
    if ((double)Sensors[0].Data.thedata[8]/TotalSumFinger1>0.22)
    {
        return false;
    }
    ROS_INFO("FINGER 1, CORNER TEST 2 - TESTED VALUE: [%2.6f] >? 0.22\n",(double)Sensors[0].Data.thedata[2]/TotalSumFinger1);
    if ((double)Sensors[0].Data.thedata[2]/TotalSumFinger1>0.22)
    {
        return false;
    }
    ROS_INFO("FINGER 2, CORNER TEST 3 - TESTED VALUE: [%2.6f] >? 0.22\n",(double)Sensors[3].Data.thedata[0]/TotalSumFinger2);
    if ((double)Sensors[3].Data.thedata[0]/TotalSumFinger2>0.22)
    {
        return false;
    }

    //otherwise:
    return true;
}

//main:
int main(int argc, char **argv)
{
    ros::init(argc, argv, "GraspingAssessment");
    int Num_iter=0;
    std::vector<tactilesensors::StaticData> Sensors(10);
    ros::NodeHandle n;
    ros::Subscriber sub_gripper_input = n.subscribe("/SModelRobotInput", 1, gripper_input_callback);
    //Let's start to subscribe to the static data to "feel" the object in the gripper:
    ros::Subscriber sub = n.subscribe<tactilesensors::StaticData>("TactileSensor/StaticData", 1000,boost::bind(staticdataCallback, _1, &Sensors,&Num_iter) );
    //Publisher for the gripper
    gripper_publisher = n.advertise<robotiq_s_model_control::SModel_robot_output> ("/SModelRobotOutput", 1);
    ros::AsyncSpinner spinner(1);
    spinner.start();


    system("echo RonRon26 | sudo -b -S pkill -9 PollData");
    system("rosrun tactilesensors PollData -sensor 1,4 -data static &");

    while (Num_iter<MaxNumberOfIterations+1)
    {
        // Wait for Initial Acquisition
    }
    for (int i=0;i<10;i++)
    {
        for (int j=0;j<12;j++)
        {
            SensorsInitialValue[i].Data.thedata[j]=SensorsInitialValue[i].Data.thedata[j]/(MaxNumberOfIterations/2);
        }
    }

    while (ros::ok())
    {
        //We start by activating the gripper:
        gripper_command.rACT = 1;
        gripper_command.rGTO = 1;
        gripper_command.rSPA = 150;
        gripper_command.rFRA = 100;
        gripper_command.rMOD = 1;

        ROS_INFO("ACTIVATING THE EFFECTOR");
        //Publish the command
        gripper_publisher.publish(gripper_command);
        ros::Duration(1.0).sleep();

        //Putting speed to 5 and starting to close the gripper:
        gripper_command.rSPA = 5;
        gripper_command.rPRA = 255;
        gripper_publisher.publish(gripper_command);


//        ros::Duration(5.0).sleep();
        while (gSTA==3) // Wait for movement
        {
            //Do nothing, Wait
        }
        while (gSTA==0) // Wait for stop
        {
            //Do nothing, Wait
        }


        Num_iter=0;
        while (ros::ok() && Num_iter<MaxNumberOfIterations)
        {
            ros::spinOnce();
        }

        for (int i=0;i<10;i++)
        {
            for (int j=0;j<12;j++)
            {
                RealSensorsValue[i].Data.thedata[j]=RealSensorsValue[i].Data.thedata[j]/(MaxNumberOfIterations/2);
            }
        }
        printf("Here!\n");
        if (IsGraspingOK(RealSensorsValue)) // TODO: Put a condition for grasp assessment... -> if Grasping is good, hold it;
        {
            ROS_INFO("Grasping succeeded!");
            getchar();
        }

        //Putting speed to 5 and starting to close the gripper:
        gripper_command.rSPA = 255;
        gripper_command.rPRA = gPOA-50;
        gripper_publisher.publish(gripper_command);
//        ros::Duration(1.0).sleep();
    }
    return 0;
}






