// Generated by gencpp from file delivery_topics/MenuSelectorRequest.msg
// DO NOT EDIT!


#ifndef DELIVERY_TOPICS_MESSAGE_MENUSELECTORREQUEST_H
#define DELIVERY_TOPICS_MESSAGE_MENUSELECTORREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace delivery_topics
{
template <class ContainerAllocator>
struct MenuSelectorRequest_
{
  typedef MenuSelectorRequest_<ContainerAllocator> Type;

  MenuSelectorRequest_()
    : restaurant(0)
    , count(0)
    , destone(0)
    , desttwo(0)
    , menu(0)  {
    }
  MenuSelectorRequest_(const ContainerAllocator& _alloc)
    : restaurant(0)
    , count(0)
    , destone(0)
    , desttwo(0)
    , menu(0)  {
  (void)_alloc;
    }



   typedef uint8_t _restaurant_type;
  _restaurant_type restaurant;

   typedef uint8_t _count_type;
  _count_type count;

   typedef uint8_t _destone_type;
  _destone_type destone;

   typedef uint8_t _desttwo_type;
  _desttwo_type desttwo;

   typedef uint8_t _menu_type;
  _menu_type menu;





  typedef boost::shared_ptr< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MenuSelectorRequest_

typedef ::delivery_topics::MenuSelectorRequest_<std::allocator<void> > MenuSelectorRequest;

typedef boost::shared_ptr< ::delivery_topics::MenuSelectorRequest > MenuSelectorRequestPtr;
typedef boost::shared_ptr< ::delivery_topics::MenuSelectorRequest const> MenuSelectorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator1> & lhs, const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator2> & rhs)
{
  return lhs.restaurant == rhs.restaurant &&
    lhs.count == rhs.count &&
    lhs.destone == rhs.destone &&
    lhs.desttwo == rhs.desttwo &&
    lhs.menu == rhs.menu;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator1> & lhs, const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace delivery_topics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47feed0f3d26f1f184a3f52f26d915bf";
  }

  static const char* value(const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47feed0f3d26f1f1ULL;
  static const uint64_t static_value2 = 0x84a3f52f26d915bfULL;
};

template<class ContainerAllocator>
struct DataType< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "delivery_topics/MenuSelectorRequest";
  }

  static const char* value(const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 restaurant\n"
"uint8 count\n"
"uint8 destone\n"
"uint8 desttwo\n"
"uint8 menu\n"
;
  }

  static const char* value(const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.restaurant);
      stream.next(m.count);
      stream.next(m.destone);
      stream.next(m.desttwo);
      stream.next(m.menu);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MenuSelectorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::delivery_topics::MenuSelectorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::delivery_topics::MenuSelectorRequest_<ContainerAllocator>& v)
  {
    s << indent << "restaurant: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.restaurant);
    s << indent << "count: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.count);
    s << indent << "destone: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.destone);
    s << indent << "desttwo: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.desttwo);
    s << indent << "menu: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.menu);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DELIVERY_TOPICS_MESSAGE_MENUSELECTORREQUEST_H