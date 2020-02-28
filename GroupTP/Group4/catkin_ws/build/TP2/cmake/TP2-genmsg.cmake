# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "TP2: 1 messages, 2 services")

set(MSG_I_FLAGS "-ITP2:/home/seb/catkin_ws/src/TP2/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(TP2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_custom_target(_TP2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "TP2" "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" ""
)

get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_custom_target(_TP2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "TP2" "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" ""
)

get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_custom_target(_TP2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "TP2" "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(TP2
  "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2
)

### Generating Services
_generate_srv_cpp(TP2
  "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2
)
_generate_srv_cpp(TP2
  "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2
)

### Generating Module File
_generate_module_cpp(TP2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(TP2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(TP2_generate_messages TP2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_dependencies(TP2_generate_messages_cpp _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_cpp _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_cpp _TP2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(TP2_gencpp)
add_dependencies(TP2_gencpp TP2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS TP2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(TP2
  "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2
)

### Generating Services
_generate_srv_eus(TP2
  "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2
)
_generate_srv_eus(TP2
  "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2
)

### Generating Module File
_generate_module_eus(TP2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(TP2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(TP2_generate_messages TP2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_dependencies(TP2_generate_messages_eus _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_eus _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_eus _TP2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(TP2_geneus)
add_dependencies(TP2_geneus TP2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS TP2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(TP2
  "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2
)

### Generating Services
_generate_srv_lisp(TP2
  "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2
)
_generate_srv_lisp(TP2
  "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2
)

### Generating Module File
_generate_module_lisp(TP2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(TP2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(TP2_generate_messages TP2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_dependencies(TP2_generate_messages_lisp _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_lisp _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_lisp _TP2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(TP2_genlisp)
add_dependencies(TP2_genlisp TP2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS TP2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(TP2
  "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2
)

### Generating Services
_generate_srv_nodejs(TP2
  "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2
)
_generate_srv_nodejs(TP2
  "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2
)

### Generating Module File
_generate_module_nodejs(TP2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(TP2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(TP2_generate_messages TP2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_dependencies(TP2_generate_messages_nodejs _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_nodejs _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_nodejs _TP2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(TP2_gennodejs)
add_dependencies(TP2_gennodejs TP2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS TP2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(TP2
  "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2
)

### Generating Services
_generate_srv_py(TP2
  "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2
)
_generate_srv_py(TP2
  "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2
)

### Generating Module File
_generate_module_py(TP2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(TP2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(TP2_generate_messages TP2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/msg/my_msg.msg" NAME_WE)
add_dependencies(TP2_generate_messages_py _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/storeCurrentPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_py _TP2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seb/catkin_ws/src/TP2/srv/AnnotatedPose.srv" NAME_WE)
add_dependencies(TP2_generate_messages_py _TP2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(TP2_genpy)
add_dependencies(TP2_genpy TP2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS TP2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/TP2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(TP2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(TP2_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/TP2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(TP2_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(TP2_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/TP2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(TP2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(TP2_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/TP2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(TP2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(TP2_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/TP2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(TP2_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(TP2_generate_messages_py geometry_msgs_generate_messages_py)
endif()
