/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by gensrv_cpp from file /home/longfei/catkin_ws/src/rbx2/rbx2_utils/srv/LaunchProcess.srv
 *
 */


#ifndef RBX2_UTILS_MESSAGE_LAUNCHPROCESS_H
#define RBX2_UTILS_MESSAGE_LAUNCHPROCESS_H

#include <ros/service_traits.h>


#include <rbx2_utils/LaunchProcessRequest.h>
#include <rbx2_utils/LaunchProcessResponse.h>


namespace rbx2_utils
{

struct LaunchProcess
{

typedef LaunchProcessRequest Request;
typedef LaunchProcessResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LaunchProcess
} // namespace rbx2_utils


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rbx2_utils::LaunchProcess > {
  static const char* value()
  {
    return "15f55f5751b44d06bcad0321b1a88466";
  }

  static const char* value(const ::rbx2_utils::LaunchProcess&) { return value(); }
};

template<>
struct DataType< ::rbx2_utils::LaunchProcess > {
  static const char* value()
  {
    return "rbx2_utils/LaunchProcess";
  }

  static const char* value(const ::rbx2_utils::LaunchProcess&) { return value(); }
};


// service_traits::MD5Sum< ::rbx2_utils::LaunchProcessRequest> should match 
// service_traits::MD5Sum< ::rbx2_utils::LaunchProcess > 
template<>
struct MD5Sum< ::rbx2_utils::LaunchProcessRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rbx2_utils::LaunchProcess >::value();
  }
  static const char* value(const ::rbx2_utils::LaunchProcessRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rbx2_utils::LaunchProcessRequest> should match 
// service_traits::DataType< ::rbx2_utils::LaunchProcess > 
template<>
struct DataType< ::rbx2_utils::LaunchProcessRequest>
{
  static const char* value()
  {
    return DataType< ::rbx2_utils::LaunchProcess >::value();
  }
  static const char* value(const ::rbx2_utils::LaunchProcessRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rbx2_utils::LaunchProcessResponse> should match 
// service_traits::MD5Sum< ::rbx2_utils::LaunchProcess > 
template<>
struct MD5Sum< ::rbx2_utils::LaunchProcessResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rbx2_utils::LaunchProcess >::value();
  }
  static const char* value(const ::rbx2_utils::LaunchProcessResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rbx2_utils::LaunchProcessResponse> should match 
// service_traits::DataType< ::rbx2_utils::LaunchProcess > 
template<>
struct DataType< ::rbx2_utils::LaunchProcessResponse>
{
  static const char* value()
  {
    return DataType< ::rbx2_utils::LaunchProcess >::value();
  }
  static const char* value(const ::rbx2_utils::LaunchProcessResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RBX2_UTILS_MESSAGE_LAUNCHPROCESS_H
