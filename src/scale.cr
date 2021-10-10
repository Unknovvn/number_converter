class Scale
  getter value : Int64
  private getter singular_name : String
  private getter plural_single_digit_name : String
  private getter plural_two_digit_name : String

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

  def format(amount : Int16, formatted_amount : String) : String
    remainingDecimalDigits = amount % 100
    remaining_digits = amount % 10

    if remainingDecimalDigits >= 10 && remainingDecimalDigits < 20
      return "#{formatted_amount} #{@plural_two_digit_name}"
    end

    if remaining_digits == 0
      return "#{formatted_amount} #{@plural_two_digit_name}"
    end

    if remaining_digits == 1
      return "#{formatted_amount} #{@singular_name}"
    end

    return "#{formatted_amount} #{@plural_single_digit_name}"
  end
end
