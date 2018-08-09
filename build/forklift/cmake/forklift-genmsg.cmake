# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "forklift: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iforklift:/home/curtis_interns/catkin_ws/src/forklift/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(forklift_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg" NAME_WE)
add_custom_target(_forklift_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "forklift" "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg" ""
)

get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg" NAME_WE)
add_custom_target(_forklift_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "forklift" "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg" ""
)

get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg" NAME_WE)
add_custom_target(_forklift_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "forklift" "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift
)
_generate_msg_cpp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift
)
_generate_msg_cpp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift
)

### Generating Services

### Generating Module File
_generate_module_cpp(forklift
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(forklift_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(forklift_generate_messages forklift_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg" NAME_WE)
add_dependencies(forklift_generate_messages_cpp _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_cpp _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_cpp _forklift_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forklift_gencpp)
add_dependencies(forklift_gencpp forklift_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forklift_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift
)
_generate_msg_lisp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift
)
_generate_msg_lisp(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift
)

### Generating Services

### Generating Module File
_generate_module_lisp(forklift
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(forklift_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(forklift_generate_messages forklift_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg" NAME_WE)
add_dependencies(forklift_generate_messages_lisp _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_lisp _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_lisp _forklift_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forklift_genlisp)
add_dependencies(forklift_genlisp forklift_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forklift_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift
)
_generate_msg_py(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift
)
_generate_msg_py(forklift
  "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift
)

### Generating Services

### Generating Module File
_generate_module_py(forklift
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(forklift_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(forklift_generate_messages forklift_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/vehicleControl.msg" NAME_WE)
add_dependencies(forklift_generate_messages_py _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/plcInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_py _forklift_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/curtis_interns/catkin_ws/src/forklift/msg/cameraInfo.msg" NAME_WE)
add_dependencies(forklift_generate_messages_py _forklift_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(forklift_genpy)
add_dependencies(forklift_genpy forklift_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS forklift_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/forklift
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(forklift_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/forklift
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(forklift_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/forklift
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(forklift_generate_messages_py std_msgs_generate_messages_py)
endif()
