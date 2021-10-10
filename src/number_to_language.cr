require "./scale"

class Number_to_language
  private getter scales_biggest_to_smallest : Array(Scale)
  private getter zero_to_nineteen_names : Array(String)
  private getter tens_names : Array(String)

  def initialize(
    scales : Array(Scale),
    zero_to_nineteen_names : Array(String),
    tens : Array(String)
  )
    @scales_biggest_to_smallest = scales
    @zero_to_nineteen_names = zero_to_nineteen_names
    @tens_names = tens
  end

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

    if remainder < zero_to_nineteen_names.size
      return format_result(negativeNumber, zero_to_nineteen_names[remainder])
    end

    result_array = Array(String).new
    scales_biggest_to_smallest.each do |scale|
      if remainder >= scale.value
        amount = (remainder / scale.value).floor.to_i16
        result_array.push(scale.format(amount, format_zero_to_thousand(amount)))
        remainder -= scale.value * amount
      end
    end

    if remainder > 0
      result_array.push(format_zero_to_hundred(remainder))
    end

    return format_result(negativeNumber, result_array.join(" "))
  end

  protected def format_zero_to_thousand(number : Int) : String
    if number < zero_to_nineteen_names.size
      return zero_to_nineteen_names[number]
    end

    hundred_scale = scales_biggest_to_smallest.last
    remainder = number % 100

    if number > hundred_scale.value
      amount_of_hundreds = (number / hundred_scale.value).floor.to_i16

      if remainder > 0
        return "#{hundred_scale.format(amount_of_hundreds, format_zero_to_thousand(amount_of_hundreds))} #{format_zero_to_hundred(remainder)}"
      end

      return hundred_scale.format(amount_of_hundreds, format_zero_to_thousand(amount_of_hundreds))
    end

    if remainder > 0
      return format_zero_to_hundred(remainder)
    end

    return ""
  end

  protected def format_zero_to_hundred(number : Int) : String
    if number < zero_to_nineteen_names.size
      return zero_to_nineteen_names[number]
    end

    tens = (number / 10).floor.to_i16
    remaining_digits = number % 10

    if remaining_digits > 0
      return "#{tens_names[tens - 1]}-#{zero_to_nineteen_names[remaining_digits]}"
    end

    return tens_names[tens - 1]
  end

  protected def format_result(negativeNumber : Bool, number : String) : String
    if negativeNumber
      return "minus #{number}"
    end

    return number
  end
end
