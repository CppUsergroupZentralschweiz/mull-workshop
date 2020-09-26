#include <gmock/gmock.h>

#include "roman.h"

using namespace testing;

TEST(roman_numerals, convert_arabic_to_roman) {
  ASSERT_THAT(numeral::roman(1), StrEq("I"));
  ASSERT_THAT(numeral::roman(2), StrEq("II"));
  ASSERT_THAT(numeral::roman(3), StrEq("III"));

  ASSERT_THAT(numeral::roman(10), StrEq("X"));
  ASSERT_THAT(numeral::roman(30), StrEq("XXX"));

  ASSERT_THAT(numeral::roman(23), StrEq("XXIII"));

  ASSERT_THAT(numeral::roman(4), StrEq("IV"));

  ASSERT_THAT(numeral::roman(1555), StrEq("MDLV"));

  ASSERT_THAT(numeral::roman(3444), StrEq("MMMCDXLIV"));
  ASSERT_THAT(numeral::roman(3999), StrEq("MMMCMXCIX"));
}
