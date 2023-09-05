// Generated by gencpp from file ai_robot_interfaces/set_destinationRequest.msg
// DO NOT EDIT!


#ifndef AI_ROBOT_INTERFACES_MESSAGE_SET_DESTINATIONREQUEST_H
#define AI_ROBOT_INTERFACES_MESSAGE_SET_DESTINATIONREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ai_robot_interfaces
{
template <class ContainerAllocator>
struct set_destinationRequest_
{
  typedef set_destinationRequest_<ContainerAllocator> Type;

  set_destinationRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  set_destinationRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_destinationRequest_

typedef ::ai_robot_interfaces::set_destinationRequest_<std::allocator<void> > set_destinationRequest;

typedef boost::shared_ptr< ::ai_robot_interfaces::set_destinationRequest > set_destinationRequestPtr;
typedef boost::shared_ptr< ::ai_robot_interfaces::set_destinationRequest const> set_destinationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator1> & lhs, const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator1> & lhs, const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ai_robot_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cc153912f1453b708d221682bc23d9ac";
  }

  static const char* value(const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcc153912f1453b70ULL;
  static const uint64_t static_value2 = 0x8d221682bc23d9acULL;
};

template<class ContainerAllocator>
struct DataType< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ai_robot_interfaces/set_destinationRequest";
  }

  static const char* value(const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_destinationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ai_robot_interfaces::set_destinationRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AI_ROBOT_INTERFACES_MESSAGE_SET_DESTINATIONREQUEST_H
