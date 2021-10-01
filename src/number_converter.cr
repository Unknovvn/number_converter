require "./number_to_lithuanian"

module NumberConverter
  extend self

  def to_lithuanian(number : Int64) : String
    return Lithuanian.convert_number(number)
  end
end