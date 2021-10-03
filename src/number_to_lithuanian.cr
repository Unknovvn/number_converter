module Lithuanian
  extend self

  class Scale
    getter value : Int64
    getter singular_name : String
    getter plural_single_digit_name : String
    getter plural_two_digit_name : String

    def initialize(
      value : Int64,
      singular_name : String,
      plural_single_digit_name : String,
      plural_two_digit_name : String
    )
      @value = value
      @singular_name = singular_name
      @plural_single_digit_name = plural_single_digit_name
      @plural_two_digit_name = plural_two_digit_name
    end

    def format(amount : Int16) : String
      remainingDecimalDigits = amount % 100
      remaining_digits = amount % 10

      if remainingDecimalDigits >= 10 && remainingDecimalDigits < 20
        return "#{Lithuanian.format_zero_to_thousand(amount)} #{@plural_two_digit_name}"
      end

      if remaining_digits == 0
        return "#{Lithuanian.format_zero_to_thousand(amount)} #{@plural_two_digit_name}"
      end

      if remaining_digits == 1
        return "#{Lithuanian.format_zero_to_thousand(amount)} #{@singular_name}"
      end

      return "#{Lithuanian.format_zero_to_thousand(amount)} #{@plural_single_digit_name}"
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

    result_array = Array(String).new
    Scales_biggest_to_smallest.each do |scale|
      if remainder >= scale.value
        amount = (remainder / scale.value).floor.to_i16
        result_array.push(scale.format(amount))
        remainder -= scale.value * amount
      end
    end

    if remainder > 0
      result_array.push(format_zero_to_hundred(remainder))
    end

    return format_result(negativeNumber, result_array.join(" "))
  end

  def format_zero_to_thousand(number : Int) : String
    if number < Zero_to_nineteen_names.size
      return Zero_to_nineteen_names[number]
    end

    hundred_scale = Scales_biggest_to_smallest.last
    remainder = number % 100

    if number > hundred_scale.value
      amount_of_hundreds = (number / hundred_scale.value).floor.to_i16

      if remainder > 0
        return "#{hundred_scale.format(amount_of_hundreds)} #{format_zero_to_hundred(remainder)}"
      end

      return hundred_scale.format(amount_of_hundreds)
    end

    if remainder > 0
      return format_zero_to_hundred(remainder)
    end

    return ""
  end

  def format_zero_to_hundred(number : Int) : String
    if number < Zero_to_nineteen_names.size
      return Zero_to_nineteen_names[number]
    end

    tens = (number / 10).floor.to_i16
    remaining_digits = number % 10

    if remaining_digits > 0
      return "#{Tens_names[tens - 1]} #{Zero_to_nineteen_names[remaining_digits]}"
    end

    return Tens_names[tens - 1]
  end

  def format_result(negativeNumber : Bool, number : String) : String
    if negativeNumber
      return "minus #{number}"
    end

    return number
  end
end
