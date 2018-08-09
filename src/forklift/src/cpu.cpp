#include "ros/ros.h"
#include "forklift/vehicleControl.h"
#include "forklift/cameraInfo.h"
#include "forklift/plcInfo.h"

void cameraInfoCallback(const forklift::cameraInfo msg);
void plcInfoCallback(const forklift::plcInfo msg);

#define LOOP_RATE 10//in Hz

int main(int argc, char **argv)
{
	ros::init(argc, argv, "cpu");

	ros::NodeHandle n;
	ros::Subscriber cameraSub = n.subscribe("cameraInfo", 1000, cameraInfoCallback);

	//TODO: create a plcInfo message and callback function
	ros::Subscriber plcSub = n.subscribe("cameraInfo", 1000, cameraInfoCallback);
	ros::Publisher vehicleControlPub 
		= n.advertise<forklift::vehicleControl>("vehicleControl", 1000);
	
	ros::Rate loop_rate(LOOP_RATE);

	while(ros::ok())
	{
		forklift::vehicleControl msg;
		msg.code = 1;
		msg.duration = 500;
		msg.angle = 0;

		vehicleControlPub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
	}
}


void cameraInfoCallback(const forklift::cameraInfo msg)
{
}


void plcInfoCallback(const forklift::plcInfo msg)
{
}
