// Generated by gencpp from file forklift/plcInfo.msg
// DO NOT EDIT!


#ifndef FORKLIFT_MESSAGE_PLCINFO_H
#define FORKLIFT_MESSAGE_PLCINFO_H


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
struct plcInfo_
{
  typedef plcInfo_<ContainerAllocator> Type;

  plcInfo_()
    : distance(0)
    , obstructionFound1(0)
    , obstructionFound2(0)  {
    }
  plcInfo_(const ContainerAllocator& _alloc)
    : distance(0)
    , obstructionFound1(0)
    , obstructionFound2(0)  {
  (void)_alloc;
    }



   typedef int32_t _distance_type;
  _distance_type distance;

   typedef uint8_t _obstructionFound1_type;
  _obstructionFound1_type obstructionFound1;

   typedef uint8_t _obstructionFound2_type;
  _obstructionFound2_type obstructionFound2;




  typedef boost::shared_ptr< ::forklift::plcInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::forklift::plcInfo_<ContainerAllocator> const> ConstPtr;

}; // struct plcInfo_

typedef ::forklift::plcInfo_<std::allocator<void> > plcInfo;

typedef boost::shared_ptr< ::forklift::plcInfo > plcInfoPtr;
typedef boost::shared_ptr< ::forklift::plcInfo const> plcInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::forklift::plcInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::forklift::plcInfo_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::forklift::plcInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::forklift::plcInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::forklift::plcInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::forklift::plcInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::forklift::plcInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::forklift::plcInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::forklift::plcInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ad4909de7abd886abeaa5d2c7332866a";
  }

  static const char* value(const ::forklift::plcInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xad4909de7abd886aULL;
  static const uint64_t static_value2 = 0xbeaa5d2c7332866aULL;
};

template<class ContainerAllocator>
struct DataType< ::forklift::plcInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "forklift/plcInfo";
  }

  static const char* value(const ::forklift::plcInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::forklift::plcInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 distance\n\
uint8 obstructionFound1\n\
uint8 obstructionFound2\n\
";
  }

  static const char* value(const ::forklift::plcInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::forklift::plcInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.distance);
      stream.next(m.obstructionFound1);
      stream.next(m.obstructionFound2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct plcInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::forklift::plcInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::forklift::plcInfo_<ContainerAllocator>& v)
  {
    s << indent << "distance: ";
    Printer<int32_t>::stream(s, indent + "  ", v.distance);
    s << indent << "obstructionFound1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstructionFound1);
    s << indent << "obstructionFound2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.obstructionFound2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FORKLIFT_MESSAGE_PLCINFO_H
