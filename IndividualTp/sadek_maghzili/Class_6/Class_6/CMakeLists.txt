# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(Class_6)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
add_service_files(FILES hour.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()
include_directories(${catkin_INCLUDE_DIRS})

## Build service client and server
# %Tag(SRVCLIENT)%
add_executable(hour_server src/hour_server.cpp)
target_link_libraries(hour_server ${catkin_LIBRARIES})
add_dependencies(hour_server Class_6_gencpp)

# %EndTag(SRVCLIENT)%

# %EndTag(FULLTEXT)%
