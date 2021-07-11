// Generated by gencpp from file pd_controller/JointControlReferenceRequest.msg
// DO NOT EDIT!


#ifndef PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCEREQUEST_H
#define PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pd_controller
{
template <class ContainerAllocator>
struct JointControlReferenceRequest_
{
  typedef JointControlReferenceRequest_<ContainerAllocator> Type;

  JointControlReferenceRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  JointControlReferenceRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JointControlReferenceRequest_

typedef ::pd_controller::JointControlReferenceRequest_<std::allocator<void> > JointControlReferenceRequest;

typedef boost::shared_ptr< ::pd_controller::JointControlReferenceRequest > JointControlReferenceRequestPtr;
typedef boost::shared_ptr< ::pd_controller::JointControlReferenceRequest const> JointControlReferenceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator1> & lhs, const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator1> & lhs, const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pd_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pd_controller/JointControlReferenceRequest";
  }

  static const char* value(const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointControlReferenceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pd_controller::JointControlReferenceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pd_controller::JointControlReferenceRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCEREQUEST_H