#include <iostream>
#include <unistd.h>
#include <asm/types.h>
#include <string>
#include <pthread.h>
#include "ros/ros.h"
#include "forklift/vehicleControl.h"
#include "PCANBasic.h"

#define PCAN_DEVICE PCAN_USBBUS1

TPCANMsg Message;
TPCANStatus Status;

void vehicleControlCallback(const forklift::vehicleControl msg);
void interlock();
void horn();
void rotate(int angle);

int main(int argc, char **argv)
{
	//PCAN setup
	CAN_Initialize(PCAN_USBBUS1, PCAN_BAUD_125K, 0, 0, 0);
	std::cout << "CAN initialized" << std::endl;

	
	//ROS Setup
	ros::init(argc, argv, "canDeliverer");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("vehicleControl", 1000, vehicleControlCallback);
	ros::spin();
}

void vehicleControlCallback(const forklift::vehicleControl msg)
{
	ROS_INFO("code recieved: %d", msg.code);
	
	switch(msg.code)
	{
		case 1: interlock(); ROS_INFO("set interlock"); break;
		case 2: horn(); break;
		case 3: rotate(msg.angle); break;
		default: break;
	}
}

void interlock()
{
	Message.ID = 0x188;
	Message.LEN = 8;
	Message.MSGTYPE = PCAN_MESSAGE_STANDARD;
	Message.DATA[0] = 0x05;

	Status  = CAN_Write(PCAN_USBBUS1, &Message);
	std::cout << "Can Status: " << Status << std::endl;
}

void horn()
{
}

void rotate(int angle)
{
}
