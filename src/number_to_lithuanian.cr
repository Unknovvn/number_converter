require "./scale"
require "./number_to_language"

module Lithuanian
  extend self

  private SCALES_BIGGEST_TO_SMALLEST = [
    Scale.new(1_000_000_000_000_000_000, "kvintilijonas", "kvintilijonai", "kvintilijonų"),
    Scale.new(1_000_000_000_000_000, "kvadrilijonas", "kvadrilijonai", "kvadrilijonų"),
    Scale.new(1_000_000_000_000, "trilijonas", "trilijonai", "trilijonų"),
    Scale.new(1_000_000_000, "milijardas", "milijardai", "milijardų"),
    Scale.new(1_000_000, "milijonas", "milijonai", "milijonų"),
    Scale.new(1000, "tūkstantis", "tūkstančiai", "tūkstančių"),
    Scale.new(100, "šimtas", "šimtai", "šimtų"),
  ]

  private ZERO_TO_NINETEEN_NAMES = [
    "nulis",
    "vienas",
    "du",
    "trys",
    "keturi",
    "penki",
    "šeši",
    "septyni",
    "aštuoni",
    "devyni",
    "dešimt",
    "vienuolika",
    "dvylika",
    "trylika",
    "keturiolika",
    "penkiolika",
    "šešiolika",
    "septyniolika",
    "aštuoniolika",
    "devyniolika",
  ]

  TENS_NAMES = [
    "dešimt",
    "dvidešimt",
    "trisdešimt",
    "keturiasdešimt",
    "penkiasdešimt",
    "šešiasdešimt",
    "septyniasdešimt",
    "aštuoniasdešimt",
    "devyniasdešimt",
  ]

  private class Number_to_lithuanian < Number_to_language
    def initialize
      super(SCALES_BIGGEST_TO_SMALLEST, ZERO_TO_NINETEEN_NAMES, TENS_NAMES)
    end

    protected def format_zero_to_hundred(number : Int) : String
      if number < zero_to_nineteen_names.size
        return zero_to_nineteen_names[number]
      end

      tens = (number / 10).floor.to_i16
      remaining_digits = number % 10

      if remaining_digits > 0
        return "#{tens_names[tens - 1]} #{zero_to_nineteen_names[remaining_digits]}"
      end

      return tens_names[tens - 1]
    end
  end

  def convert_number(number : Int64) : String
    number_to_lithuanian = Number_to_lithuanian.new
    return number_to_lithuanian.convert_number number
  end
end
