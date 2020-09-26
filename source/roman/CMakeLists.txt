add_library(roman roman.cc)
target_link_libraries(roman PUBLIC settings)

add_executable(roman-test roman.test.cc)
target_link_libraries(roman-test
  PRIVATE
    roman
    gtest gmock gmock_main
)
