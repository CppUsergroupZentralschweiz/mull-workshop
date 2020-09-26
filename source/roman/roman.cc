#include "roman.h"

#include <vector>

namespace {
struct Roman {
  std::string symbol;
  std::uint32_t value;
};

std::vector<Roman> const numerals{
  {"M", 1000},
  {"CM", 900},
  {"D", 500},
  {"CD", 400},
  {"C", 100},
  {"XC", 90},
  {"L", 50},
  {"XL", 40},
  {"X", 10},
  {"IX", 9},
  {"V", 5},
  {"IV", 4},
  {"I", 1},
};
} // namespace

namespace numeral {

std::string roman(std::size_t number) {
  std::string result{};
  for(auto const & numeral : numerals) {
    while(number >= numeral.value) {
      result += numeral.symbol;
      number -= numeral.value;
    }
  }
  return result;
}

} // namespace numeral
