# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ai_robot_interfaces: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iai_robot_interfaces:/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ai_robot_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_custom_target(_ai_robot_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ai_robot_interfaces" "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" "geometry_msgs/Pose:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_custom_target(_ai_robot_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ai_robot_interfaces" "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" "geometry_msgs/PointStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_custom_target(_ai_robot_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ai_robot_interfaces" "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" ""
)

get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_custom_target(_ai_robot_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ai_robot_interfaces" "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
)
_generate_msg_cpp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Services
_generate_srv_cpp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
)
_generate_srv_cpp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Module File
_generate_module_cpp(ai_robot_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ai_robot_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ai_robot_interfaces_generate_messages ai_robot_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_cpp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_cpp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_cpp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_cpp _ai_robot_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ai_robot_interfaces_gencpp)
add_dependencies(ai_robot_interfaces_gencpp ai_robot_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ai_robot_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
)
_generate_msg_eus(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Services
_generate_srv_eus(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
)
_generate_srv_eus(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Module File
_generate_module_eus(ai_robot_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ai_robot_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ai_robot_interfaces_generate_messages ai_robot_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_eus _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_eus _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_eus _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_eus _ai_robot_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ai_robot_interfaces_geneus)
add_dependencies(ai_robot_interfaces_geneus ai_robot_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ai_robot_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
)
_generate_msg_lisp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Services
_generate_srv_lisp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
)
_generate_srv_lisp(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Module File
_generate_module_lisp(ai_robot_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ai_robot_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ai_robot_interfaces_generate_messages ai_robot_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_lisp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_lisp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_lisp _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_lisp _ai_robot_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ai_robot_interfaces_genlisp)
add_dependencies(ai_robot_interfaces_genlisp ai_robot_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ai_robot_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
)
_generate_msg_nodejs(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Services
_generate_srv_nodejs(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
)
_generate_srv_nodejs(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Module File
_generate_module_nodejs(ai_robot_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ai_robot_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ai_robot_interfaces_generate_messages ai_robot_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_nodejs _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_nodejs _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_nodejs _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_nodejs _ai_robot_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ai_robot_interfaces_gennodejs)
add_dependencies(ai_robot_interfaces_gennodejs ai_robot_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ai_robot_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
)
_generate_msg_py(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Services
_generate_srv_py(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
)
_generate_srv_py(ai_robot_interfaces
  "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
)

### Generating Module File
_generate_module_py(ai_robot_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ai_robot_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ai_robot_interfaces_generate_messages ai_robot_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/MpTraj.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_py _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/msg/TopoMetric.msg" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_py _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/restart_nav.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_py _ai_robot_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice_1/ai_robot_interfaces/srv/set_destination.srv" NAME_WE)
add_dependencies(ai_robot_interfaces_generate_messages_py _ai_robot_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ai_robot_interfaces_genpy)
add_dependencies(ai_robot_interfaces_genpy ai_robot_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ai_robot_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ai_robot_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ai_robot_interfaces_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ai_robot_interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(ai_robot_interfaces_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ai_robot_interfaces_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ai_robot_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ai_robot_interfaces_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ai_robot_interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(ai_robot_interfaces_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ai_robot_interfaces_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ai_robot_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ai_robot_interfaces_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ai_robot_interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(ai_robot_interfaces_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ai_robot_interfaces_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ai_robot_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ai_robot_interfaces_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ai_robot_interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(ai_robot_interfaces_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ai_robot_interfaces_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces)
  install(CODE "execute_process(COMMAND \"/home/asjklj/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ai_robot_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ai_robot_interfaces_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ai_robot_interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(ai_robot_interfaces_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ai_robot_interfaces_generate_messages_py sensor_msgs_generate_messages_py)
endif()
