# CMake generated Testfile for 
# Source directory: /Users/dianamin/Desktop/algo_lab2/week7/diet
# Build directory: /Users/dianamin/Desktop/algo_lab2/week7/diet
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(compilation_of__main "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "--build" "/Users/dianamin/Desktop/algo_lab2/week7/diet" "--target" "main")
set_tests_properties(compilation_of__main PROPERTIES  FIXTURES_SETUP "main" LABELS "diet_")
add_test(execution___of__main "/Users/dianamin/Desktop/algo_lab2/week7/diet/main")
set_tests_properties(execution___of__main PROPERTIES  DEPENDS "compilation_of__main" FIXTURES_REQUIRED "diet_;main" LABELS "diet_" WORKING_DIRECTORY "/Users/dianamin/Desktop/algo_lab2/week7/diet/__exec_test_dir")
add_test(diet__SetupFixture "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "-E" "copy_directory" "/Users/dianamin/Desktop/algo_lab2/week7/diet" "/Users/dianamin/Desktop/algo_lab2/week7/diet/__exec_test_dir")
set_tests_properties(diet__SetupFixture PROPERTIES  FIXTURES_SETUP "diet_" LABELS "diet_")
add_test(diet__CleanupFixture "/usr/local/Cellar/cmake/3.12.3/bin/cmake" "-E" "remove_directory" "/Users/dianamin/Desktop/algo_lab2/week7/diet/__exec_test_dir")
set_tests_properties(diet__CleanupFixture PROPERTIES  FIXTURES_CLEANUP "diet_" LABELS "diet_")