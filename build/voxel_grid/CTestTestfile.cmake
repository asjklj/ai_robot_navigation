# CMake generated Testfile for 
# Source directory: /home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice/navigation/voxel_grid
# Build directory: /home/asjklj/ai_robot_ranger_mini/build/voxel_grid
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_voxel_grid_gtest_voxel_grid_tests "/home/asjklj/ai_robot_ranger_mini/build/voxel_grid/catkin_generated/env_cached.sh" "/home/asjklj/anaconda3/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/asjklj/ai_robot_ranger_mini/build/voxel_grid/test_results/voxel_grid/gtest-voxel_grid_tests.xml" "--return-code" "/home/asjklj/ai_robot_ranger_mini/devel/.private/voxel_grid/lib/voxel_grid/voxel_grid_tests --gtest_output=xml:/home/asjklj/ai_robot_ranger_mini/build/voxel_grid/test_results/voxel_grid/gtest-voxel_grid_tests.xml")
set_tests_properties(_ctest_voxel_grid_gtest_voxel_grid_tests PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice/navigation/voxel_grid/CMakeLists.txt;42;catkin_add_gtest;/home/asjklj/ai_robot_ranger_mini/src/ai_robot_practice/navigation/voxel_grid/CMakeLists.txt;0;")
subdirs("gtest")
