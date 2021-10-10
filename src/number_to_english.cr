require "./scale"
require "./number_to_language"

module English
  extend self

  private SCALES_BIGGEST_TO_SMALLEST = [
    Scale.new(1_000_000_000_000_000_000, "quintillion", "quintillion", "quintillion"),
    Scale.new(1_000_000_000_000_000, "quadrillion", "quadrillion", "quadrillion"),
    Scale.new(1_000_000_000_000, "trillion", "trillion", "trillion"),
    Scale.new(1_000_000_000, "billion", "billion", "billion"),
    Scale.new(1_000_000, "million", "million", "million"),
    Scale.new(1000, "thousand", "thousand", "thousand"),
    Scale.new(100, "hundred", "hundred", "hundred"),
  ]

  private ZERO_TO_NINETEEN_NAMES = [
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen",
  ]

  TENS_NAMES = [
    "ten",
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety",
  ]

  private class Number_to_english < Number_to_language
    def initialize
      super(SCALES_BIGGEST_TO_SMALLEST, ZERO_TO_NINETEEN_NAMES, TENS_NAMES)
    end
  end

  def convert_number(number : Int64) : String
    number_to_english = Number_to_english.new
    return number_to_english.convert_number number
  end
end
