#include "ros/ros.h"
#include "roboticArm.h"

int main (int argc, char **argv)
{
    ros::init(argc, argv, "move_robot");
    ros::NodeHandle n; /* necessaire pour que ros::ok retourne true ??? */

    RoboticArm robot;
    std::vector<tf::Transform> trajectory;


    /* exemple de prise en avec position compensée */
    tf::Vector3 origin;
    tf::Matrix3x3 basis;
    tf::Transform pick_pose, current_pose;
    tf::Transform pick_approach_pose;

    while (ros::ok())
    {
//        origin.setValue(0.49863, -0.28074, 0.12785);
//        basis.setRPY(3.0643, -0.0239, -1.4411);

//        pick_pose.setOrigin(origin);
//        pick_pose.setBasis(basis);

//        pick_approach_pose.setOrigin(pick_pose.getOrigin());
//        pick_approach_pose.setBasis(pick_pose.getBasis());
//        pick_approach_pose.getOrigin().setZ(pick_approach_pose.getOrigin().getZ() + 0.030);


        current_pose = robot.get_arm_position();

        pick_approach_pose = current_pose;
        pick_approach_pose.getOrigin().setX(pick_approach_pose.getOrigin().getX() + 0.03);

        pick_pose = pick_approach_pose;
        pick_pose.getOrigin().setY(pick_pose.getOrigin().getY() + 0.03);


        trajectory.resize(2);
        trajectory[0] = pick_approach_pose;
        trajectory[1] = pick_pose;

        ROS_INFO("READY TO MOVE");
        getchar();

        /* execution*/
        robot.execute_trajectory(trajectory, 0.3);

//        trajectory.resize(2);
//        trajectory[0] = pick_approach_pose;
//        trajectory[1] = robot.tf_home;


//        robot.execute_trajectory(trajectory, 0.3);


    }
}
