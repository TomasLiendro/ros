#include "ros/ros.h"
#include "std_msgs/String.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "simple_publisher");
    ros::NodeHandle nh;

    ros::Publisher pub = nh.advertise<std_msgs::String>("chatter",10);

    ros::Rate loop_rate(1); // Hz

    int count = 0;
    while(ros::ok){
        std_msgs::String msg;
        msg.data = "Hello, Ros! Count: " + std::to_string(count);

        ROS_INFO("Publishing: %s", msg.data.c_str());
        pub.publish(msg);

        loop_rate.sleep();
        count ++;

    }
    return 0;
}