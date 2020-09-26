#include <gmock/gmock.h>

#include "GildedRose.h"

using namespace testing;

TEST(GildedRose, dummy) {
  std::vector<Item> items{};
  GildedRose rose{items};
  rose.updateQuality();
}