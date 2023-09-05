#include "ros/ros.h"
#include "gazebo_msgs/ModelStates.h"
#include <fstream>
#include <unistd.h>
// 定义一个计数器
int counter = 0;
const int WRITE_INTERVAL = 40;  // 设置写入的间隔，每隔10个消息写入一次

void callbackPath(const gazebo_msgs::ModelStates::ConstPtr& msg)
{
    // 检查计数器是否达到写入间隔
    if (counter < WRITE_INTERVAL)
    {
        counter++;
        return;
    }

    counter = 0;

    // 打开文件
    std::ofstream outfile("/home/asjklj/ai_robot_ranger_mini/src/show_path/include/show_path/rrt_path.txt", std::ios::app);
    if (!outfile.is_open())
    {
        ROS_ERROR("Failed to open file");
        return;
    }

    // 写入位置信息
    const geometry_msgs::Pose& pose = msg->pose[4];
    outfile << "Position: x = " << pose.position.x << ", y = " << pose.position.y << std::endl;

    // // 写入姿态信息
    // const geometry_msgs::Quaternion& orientation = pose.orientation;
    // outfile << "Orientation: x = " << orientation.x << ", y = " << orientation.y
    //         << ", z = " << orientation.z << ", w = " << orientation.w << std::endl;

    // 关闭文件
    outfile.close();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "path_recorder");
    ros::NodeHandle nh;
    truncate("/home/asjklj/ai_robot_ranger_mini/src/show_path/include/show_path/rrt_path.txt", 0);  // 清空文件
    // 创建订阅器并订阅 /gazebo/model_states 话题
    ros::Subscriber sub = nh.subscribe<gazebo_msgs::ModelStates>("/gazebo/model_states", 100, callbackPath);

    ros::spin();

    return 0;
}
