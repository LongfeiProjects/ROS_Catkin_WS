# include <ros/ros.h>
# include <message_filters/subscriber.h>

// tf headers
# include <tf/transform_listener.h>
# include <tf/message_filter.h>

class PoseDrawer{
public:
    PoseDrawer()
    {
        msgfilter_sub_.subscribe(node,"turtle_point_stamped",10);
        tf_msgfilter_ = new tf::MessageFilter<geometry_msgs::PointStamped>(msgfilter_sub_, tf_listerner_, "/turtle1", 10);
        tf_msgfilter_->registerCallback(&PoseDrawer::mycallback, this);
    }

private:
    ros::NodeHandle node;
    message_filters::Subscriber<geometry_msgs::PointStamped> msgfilter_sub_;

    tf::TransformListener tf_listerner_;
    tf::MessageFilter<geometry_msgs::PointStamped> * tf_msgfilter_;


    void mycallback(const boost::shared_ptr<const geometry_msgs::PointStamped>& point_ptr){
        geometry_msgs::PointStamped point_out;
        try{
            tf_listerner_.transformPoint("/turtle1", *point_ptr, point_out);

            printf("point_ptr value caught by tf_msgfilter callback is (x: %f, y: %f, z: %f) \n", point_ptr->point.x, point_ptr->point.y, point_ptr->point.z);

            printf("turtle3 in frame of turtle1 is (x: %f, y: %f, z: %f) \n", point_out.point.x, point_out.point.y, point_out.point.z );

        }
        catch(tf::TransformException &err){
            printf("Failure %s\n", err.what());
        }
    }

};

int main(int argc, char** argv){
    ros::init(argc, argv, "pose_drawer");
    PoseDrawer pd;
    ros::spin();
    return 0;
}
