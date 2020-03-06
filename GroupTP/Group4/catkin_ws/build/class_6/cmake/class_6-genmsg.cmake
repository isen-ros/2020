# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "class_6: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(class_6_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_custom_target(_class_6_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "class_6" "/home/seb/catkin_ws/src/class_6/srv/hour.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(class_6
  "/home/seb/catkin_ws/src/class_6/srv/hour.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_6
)

### Generating Module File
_generate_module_cpp(class_6
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_6
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(class_6_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(class_6_generate_messages class_6_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_dependencies(class_6_generate_messages_cpp _class_6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_6_gencpp)
add_dependencies(class_6_gencpp class_6_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_6_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(class_6
  "/home/seb/catkin_ws/src/class_6/srv/hour.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/class_6
)

### Generating Module File
_generate_module_eus(class_6
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/class_6
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(class_6_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(class_6_generate_messages class_6_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_dependencies(class_6_generate_messages_eus _class_6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_6_geneus)
add_dependencies(class_6_geneus class_6_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_6_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(class_6
  "/home/seb/catkin_ws/src/class_6/srv/hour.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_6
)

### Generating Module File
_generate_module_lisp(class_6
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_6
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(class_6_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(class_6_generate_messages class_6_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_dependencies(class_6_generate_messages_lisp _class_6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_6_genlisp)
add_dependencies(class_6_genlisp class_6_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_6_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(class_6
  "/home/seb/catkin_ws/src/class_6/srv/hour.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/class_6
)

### Generating Module File
_generate_module_nodejs(class_6
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/class_6
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(class_6_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(class_6_generate_messages class_6_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_dependencies(class_6_generate_messages_nodejs _class_6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_6_gennodejs)
add_dependencies(class_6_gennodejs class_6_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_6_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(class_6
  "/home/seb/catkin_ws/src/class_6/srv/hour.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_6
)

### Generating Module File
_generate_module_py(class_6
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_6
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(class_6_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(class_6_generate_messages class_6_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seb/catkin_ws/src/class_6/srv/hour.srv" NAME_WE)
add_dependencies(class_6_generate_messages_py _class_6_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(class_6_genpy)
add_dependencies(class_6_genpy class_6_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS class_6_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/class_6
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(class_6_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/class_6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/class_6
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(class_6_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/class_6
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(class_6_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/class_6)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/class_6
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(class_6_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_6)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_6\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/class_6
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(class_6_generate_messages_py std_msgs_generate_messages_py)
endif()
