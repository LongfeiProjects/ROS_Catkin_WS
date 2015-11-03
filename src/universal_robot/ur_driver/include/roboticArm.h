#ifndef RoboticArm_H
#define RoboticArm_H

#include <ros/ros.h>
#include <tf/transform_datatypes.h>
//#include <tf_conversions/tf_eigen.h>

class RoboticArm
{
public:

    RoboticArm();
    void move_fingers(uint8_t pos, uint8_t  force, uint8_t speed, bool position_compenstation);
    void open_fingers(uint8_t force = 255, uint8_t speed = 255, bool position_compensation = false);
    void close_fingers(uint8_t force = 255, uint8_t speed = 255, bool position_compensation = false);
    void activate_gripper(void);
    void go_home();
    void go_bin();
    void go_bin_approach();
    void move_to_point(tf::Transform tf_point);
    bool gripper_has_object(void);
    void execute_trajectory(const std::vector<tf::Transform> &trajectory, double velocity);


    tf::StampedTransform get_arm_position_in_camera_frame();
    tf::StampedTransform get_teached_arm_position();

    tf::StampedTransform get_arm_position();


    tf::Transform tf_home;
    tf::Transform tf_bin;

private:

    bool has_object;
    tf::Transform tf_bin_approach;
};

#endif
