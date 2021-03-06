// Generated by gencpp from file forklift/vehicleControl.msg
// DO NOT EDIT!


#ifndef FORKLIFT_MESSAGE_VEHICLECONTROL_H
#define FORKLIFT_MESSAGE_VEHICLECONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace forklift
{
template <class ContainerAllocator>
struct vehicleControl_
{
  typedef vehicleControl_<ContainerAllocator> Type;

  vehicleControl_()
    : code(0)
    , duration(0)
    , angle(0)  {
    }
  vehicleControl_(const ContainerAllocator& _alloc)
    : code(0)
    , duration(0)
    , angle(0)  {
  (void)_alloc;
    }



   typedef uint8_t _code_type;
  _code_type code;

   typedef uint16_t _duration_type;
  _duration_type duration;

   typedef uint16_t _angle_type;
  _angle_type angle;




  typedef boost::shared_ptr< ::forklift::vehicleControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::forklift::vehicleControl_<ContainerAllocator> const> ConstPtr;

}; // struct vehicleControl_

typedef ::forklift::vehicleControl_<std::allocator<void> > vehicleControl;

typedef boost::shared_ptr< ::forklift::vehicleControl > vehicleControlPtr;
typedef boost::shared_ptr< ::forklift::vehicleControl const> vehicleControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::forklift::vehicleControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::forklift::vehicleControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace forklift

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'forklift': ['/home/curtis_interns/catkin_ws/src/forklift/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::forklift::vehicleControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::forklift::vehicleControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::forklift::vehicleControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::forklift::vehicleControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::forklift::vehicleControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::forklift::vehicleControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::forklift::vehicleControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "98e4df19f6b2439f6bb856d777d6e5a3";
  }

  static const char* value(const ::forklift::vehicleControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x98e4df19f6b2439fULL;
  static const uint64_t static_value2 = 0x6bb856d777d6e5a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::forklift::vehicleControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "forklift/vehicleControl";
  }

  static const char* value(const ::forklift::vehicleControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::forklift::vehicleControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 code\n\
\n\
uint16 duration\n\
uint16 angle\n\
";
  }

  static const char* value(const ::forklift::vehicleControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::forklift::vehicleControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.code);
      stream.next(m.duration);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct vehicleControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::forklift::vehicleControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::forklift::vehicleControl_<ContainerAllocator>& v)
  {
    s << indent << "code: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.code);
    s << indent << "duration: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.duration);
    s << indent << "angle: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FORKLIFT_MESSAGE_VEHICLECONTROL_H
