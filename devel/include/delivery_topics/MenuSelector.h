// Generated by gencpp from file delivery_topics/MenuSelector.msg
// DO NOT EDIT!


#ifndef DELIVERY_TOPICS_MESSAGE_MENUSELECTOR_H
#define DELIVERY_TOPICS_MESSAGE_MENUSELECTOR_H

#include <ros/service_traits.h>


#include <delivery_topics/MenuSelectorRequest.h>
#include <delivery_topics/MenuSelectorResponse.h>


namespace delivery_topics
{

struct MenuSelector
{

typedef MenuSelectorRequest Request;
typedef MenuSelectorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MenuSelector
} // namespace delivery_topics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::delivery_topics::MenuSelector > {
  static const char* value()
  {
    return "cb513c0a49de7b970fe6ef39337a3991";
  }

  static const char* value(const ::delivery_topics::MenuSelector&) { return value(); }
};

template<>
struct DataType< ::delivery_topics::MenuSelector > {
  static const char* value()
  {
    return "delivery_topics/MenuSelector";
  }

  static const char* value(const ::delivery_topics::MenuSelector&) { return value(); }
};


// service_traits::MD5Sum< ::delivery_topics::MenuSelectorRequest> should match
// service_traits::MD5Sum< ::delivery_topics::MenuSelector >
template<>
struct MD5Sum< ::delivery_topics::MenuSelectorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::delivery_topics::MenuSelector >::value();
  }
  static const char* value(const ::delivery_topics::MenuSelectorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::delivery_topics::MenuSelectorRequest> should match
// service_traits::DataType< ::delivery_topics::MenuSelector >
template<>
struct DataType< ::delivery_topics::MenuSelectorRequest>
{
  static const char* value()
  {
    return DataType< ::delivery_topics::MenuSelector >::value();
  }
  static const char* value(const ::delivery_topics::MenuSelectorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::delivery_topics::MenuSelectorResponse> should match
// service_traits::MD5Sum< ::delivery_topics::MenuSelector >
template<>
struct MD5Sum< ::delivery_topics::MenuSelectorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::delivery_topics::MenuSelector >::value();
  }
  static const char* value(const ::delivery_topics::MenuSelectorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::delivery_topics::MenuSelectorResponse> should match
// service_traits::DataType< ::delivery_topics::MenuSelector >
template<>
struct DataType< ::delivery_topics::MenuSelectorResponse>
{
  static const char* value()
  {
    return DataType< ::delivery_topics::MenuSelector >::value();
  }
  static const char* value(const ::delivery_topics::MenuSelectorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DELIVERY_TOPICS_MESSAGE_MENUSELECTOR_H
