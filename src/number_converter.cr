require "./number_to_lithuanian"
require "./number_to_english"

module NumberConverter
  extend self

  # Method to convert number to lithuanian text
  def to_lithuanian(number : Int64) : String
    return Lithuanian.convert_number(number)
  end

  # Method to convert number to lithuanian text
  def to_lithuanian(number : Int32) : String
    return Lithuanian.convert_number(number.to_i64)
  end

  def to_english(number : Int64) : String
    return English.convert_number(number)
  end

  def to_english(number : Int32) : String
    return English.convert_number(number.to_i64)
  end
end
