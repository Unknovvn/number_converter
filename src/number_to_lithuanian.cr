module Lithuanian
  extend self

  class Scale
    getter value : Int64
    getter singular_name : String
    getter plural_single_digit_name : String
    getter plural_two_digit_name : String

    def initialize(
      value : Int,
      singular_name : String,
      plural_single_digit_name : String,
      plural_two_digit_name : String
    )
      @value = value
      @singular_name = singular_name
      @plural_single_digit_name = plural_single_digit_name
      @plural_two_digit_name = plural_two_digit_name
    end
  end

  Scales_biggest_to_smallest = [
    Scale.new(1_000_000_000_000_000_000, "kvintilijonas", "kvintilijonai", "kvintilijonų"),
    Scale.new(1_000_000_000_000_000, "kvadrilijonas", "kvadrilijonai", "kvadrilijonų"),
    Scale.new(1_000_000_000_000, "trilijonas", "trilijonai", "trilijonų"),
    Scale.new(1_000_000_000, "milijardas", "milijardai", "milijardų"),
    Scale.new(1_000_000, "milijonas", "milijonai", "milijonų"),
    Scale.new(1000, "tūkstantis", "tūkstančiai", "tūkstančių"),
    Scale.new(100, "šimtas", "šimtai", "šimtų"),
  ]

  Zero_to_nineteen_names = [
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

  Tens_names = [
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

  def convert_number(number : Int64) : String
    negativeNumber : Bool
    remainder : Int64

    if number < 0
      negativeNumber = true
      remainder = number * -1
    else
      negativeNumber = false
      remainder = number
    end

    if remainder < Zero_to_nineteen_names.size
      return format_result(negativeNumber, Zero_to_nineteen_names[remainder])
    end

    return "Number > 19"
  end

  private def format_result(negativeNumber : Bool, number : String) : String
    if negativeNumber
      return "minus #{number}"
    end

    return number
  end
end
