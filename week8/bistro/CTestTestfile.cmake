# CMake generated Testfile for 
# Source directory: /Users/dianamin/Desktop/algo_lab2/week8/bistro
# Build directory: /Users/dianamin/Desktop/algo_lab2/week8/bistro
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(compilation_of__main "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "--build" "/Users/dianamin/Desktop/algo_lab2/week8/bistro" "--target" "main")
set_tests_properties(compilation_of__main PROPERTIES  FIXTURES_SETUP "main" LABELS "bistro_")
add_test(execution___of__main "/Users/dianamin/Desktop/algo_lab2/week8/bistro/main")
set_tests_properties(execution___of__main PROPERTIES  DEPENDS "compilation_of__main" FIXTURES_REQUIRED "bistro_;main" LABELS "bistro_" WORKING_DIRECTORY "/Users/dianamin/Desktop/algo_lab2/week8/bistro/__exec_test_dir")
add_test(bistro__SetupFixture "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "-E" "copy_directory" "/Users/dianamin/Desktop/algo_lab2/week8/bistro" "/Users/dianamin/Desktop/algo_lab2/week8/bistro/__exec_test_dir")
set_tests_properties(bistro__SetupFixture PROPERTIES  FIXTURES_SETUP "bistro_" LABELS "bistro_")
add_test(bistro__CleanupFixture "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "-E" "remove_directory" "/Users/dianamin/Desktop/algo_lab2/week8/bistro/__exec_test_dir")
set_tests_properties(bistro__CleanupFixture PROPERTIES  FIXTURES_CLEANUP "bistro_" LABELS "bistro_")