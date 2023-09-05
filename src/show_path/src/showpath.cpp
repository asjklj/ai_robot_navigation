#include <ros/ros.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <fstream>
#include <vector>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "read_path");
    ros::NodeHandle nh;
    ros::Publisher pub_path = nh.advertise<nav_msgs::Path>("read_path", 1, true);
    ros::Rate rate(1);

    nav_msgs::Path path;
  
    std::ifstream file("/home/asjklj/ai_robot_ranger_mini/src/show_path/include/show_path/explorelite_path.txt");
    if (!file.is_open())
    {
        ROS_ERROR("Failed to open the file.");
        return -1;
    }

    std::string line;
    double timestamp = 0.0; // 初始化时间戳为0
    while (std::getline(file, line))
    {
        geometry_msgs::PoseStamped pose;
        std::istringstream iss(line);
        std::string field;

        // Extract position values
        std::getline(iss, field, ',');
        pose.pose.position.x = std::stod(field.substr(field.find_last_of("0123456789.-")));

        std::getline(iss, field, ',');
        pose.pose.position.y = std::stod(field.substr(field.find_last_of("0123456789.-")));

        pose.header.stamp = ros::Time(timestamp); // 为每个路径点设置不同的时间戳
        timestamp += 1.0; // 递增时间戳

        path.poses.push_back(pose);
    }
    file.close();

    path.header.frame_id = "map";
    path.header.stamp = ros::Time::now();

    while (ros::ok())
    {
        pub_path.publish(path);
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
