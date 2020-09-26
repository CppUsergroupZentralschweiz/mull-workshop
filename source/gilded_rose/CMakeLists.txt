add_library(GildedRose GildedRose.cc)
target_link_libraries(GildedRose PUBLIC settings)

add_executable(GildedRose-test GildedRose.test.cc)
target_link_libraries(GildedRose-test
  PRIVATE
    GildedRose
    gtest gmock gmock_main
)
