require "spec"
require "../src/number_converter"

describe NumberConverter do
  it "correctly converts numbers from -19 to 19" do
    NumberConverter.to_english(-19).should eq "minus nineteen"
    NumberConverter.to_english(-18).should eq "minus eighteen"
    NumberConverter.to_english(-17).should eq "minus seventeen"
    NumberConverter.to_english(-16).should eq "minus sixteen"
    NumberConverter.to_english(-15).should eq "minus fifteen"
    NumberConverter.to_english(-14).should eq "minus fourteen"
    NumberConverter.to_english(-13).should eq "minus thirteen"
    NumberConverter.to_english(-12).should eq "minus twelve"
    NumberConverter.to_english(-11).should eq "minus eleven"
    NumberConverter.to_english(-10).should eq "minus ten"
    NumberConverter.to_english(-9).should eq "minus nine"
    NumberConverter.to_english(-8).should eq "minus eight"
    NumberConverter.to_english(-7).should eq "minus seven"
    NumberConverter.to_english(-6).should eq "minus six"
    NumberConverter.to_english(-5).should eq "minus five"
    NumberConverter.to_english(-4).should eq "minus four"
    NumberConverter.to_english(-3).should eq "minus three"
    NumberConverter.to_english(-2).should eq "minus two"
    NumberConverter.to_english(-1).should eq "minus one"
    NumberConverter.to_english(0).should eq "zero"
    NumberConverter.to_english(1).should eq "one"
    NumberConverter.to_english(2).should eq "two"
    NumberConverter.to_english(3).should eq "three"
    NumberConverter.to_english(4).should eq "four"
    NumberConverter.to_english(5).should eq "five"
    NumberConverter.to_english(6).should eq "six"
    NumberConverter.to_english(7).should eq "seven"
    NumberConverter.to_english(8).should eq "eight"
    NumberConverter.to_english(9).should eq "nine"
    NumberConverter.to_english(10).should eq "ten"
    NumberConverter.to_english(11).should eq "eleven"
    NumberConverter.to_english(12).should eq "twelve"
    NumberConverter.to_english(13).should eq "thirteen"
    NumberConverter.to_english(14).should eq "fourteen"
    NumberConverter.to_english(15).should eq "fifteen"
    NumberConverter.to_english(16).should eq "sixteen"
    NumberConverter.to_english(17).should eq "seventeen"
    NumberConverter.to_english(18).should eq "eighteen"
    NumberConverter.to_english(19).should eq "nineteen"
  end

  it "correctly converts tens" do
    NumberConverter.to_english(10).should eq "ten"
    NumberConverter.to_english(20).should eq "twenty"
    NumberConverter.to_english(30).should eq "thirty"
    NumberConverter.to_english(40).should eq "forty"
    NumberConverter.to_english(50).should eq "fifty"
    NumberConverter.to_english(60).should eq "sixty"
    NumberConverter.to_english(70).should eq "seventy"
    NumberConverter.to_english(80).should eq "eighty"
    NumberConverter.to_english(90).should eq "ninety"
  end

  it "correctly converts dozens with units" do
    NumberConverter.to_english(40).should eq "forty"
    NumberConverter.to_english(41).should eq "forty-one"
    NumberConverter.to_english(42).should eq "forty-two"
    NumberConverter.to_english(43).should eq "forty-three"
    NumberConverter.to_english(44).should eq "forty-four"
    NumberConverter.to_english(45).should eq "forty-five"
    NumberConverter.to_english(46).should eq "forty-six"
    NumberConverter.to_english(47).should eq "forty-seven"
    NumberConverter.to_english(48).should eq "forty-eight"
    NumberConverter.to_english(49).should eq "forty-nine"
  end

  it "correctly converts hundreds" do
    NumberConverter.to_english(100).should eq "one hundred"
    NumberConverter.to_english(200).should eq "two hundred"
    NumberConverter.to_english(300).should eq "three hundred"
    NumberConverter.to_english(400).should eq "four hundred"
    NumberConverter.to_english(500).should eq "five hundred"
    NumberConverter.to_english(600).should eq "six hundred"
    NumberConverter.to_english(700).should eq "seven hundred"
    NumberConverter.to_english(800).should eq "eight hundred"
    NumberConverter.to_english(900).should eq "nine hundred"
  end

  it "correctly converts thousands" do
    NumberConverter.to_english(1_000).should eq "one thousand"
    NumberConverter.to_english(2_000).should eq "two thousand"
    NumberConverter.to_english(3_000).should eq "three thousand"
    NumberConverter.to_english(4_000).should eq "four thousand"
    NumberConverter.to_english(5_000).should eq "five thousand"
    NumberConverter.to_english(6_000).should eq "six thousand"
    NumberConverter.to_english(7_000).should eq "seven thousand"
    NumberConverter.to_english(8_000).should eq "eight thousand"
    NumberConverter.to_english(9_000).should eq "nine thousand"
  end

  it "correctly converts millions" do
    NumberConverter.to_english(1_000_000).should eq "one million"
    NumberConverter.to_english(2_000_000).should eq "two million"
    NumberConverter.to_english(3_000_000).should eq "three million"
    NumberConverter.to_english(4_000_000).should eq "four million"
    NumberConverter.to_english(5_000_000).should eq "five million"
    NumberConverter.to_english(6_000_000).should eq "six million"
    NumberConverter.to_english(7_000_000).should eq "seven million"
    NumberConverter.to_english(8_000_000).should eq "eight million"
    NumberConverter.to_english(9_000_000).should eq "nine million"
  end

  it "correctly converts billions" do
    NumberConverter.to_english(1_000_000_000).should eq "one billion"
    NumberConverter.to_english(2_000_000_000).should eq "two billion"
    NumberConverter.to_english(3_000_000_000).should eq "three billion"
    NumberConverter.to_english(4_000_000_000).should eq "four billion"
    NumberConverter.to_english(5_000_000_000).should eq "five billion"
    NumberConverter.to_english(6_000_000_000).should eq "six billion"
    NumberConverter.to_english(7_000_000_000).should eq "seven billion"
    NumberConverter.to_english(8_000_000_000).should eq "eight billion"
    NumberConverter.to_english(9_000_000_000).should eq "nine billion"
  end

  it "correctly converts trillions" do
    NumberConverter.to_english(1_000_000_000_000).should eq "one trillion"
    NumberConverter.to_english(2_000_000_000_000).should eq "two trillion"
    NumberConverter.to_english(3_000_000_000_000).should eq "three trillion"
    NumberConverter.to_english(4_000_000_000_000).should eq "four trillion"
    NumberConverter.to_english(5_000_000_000_000).should eq "five trillion"
    NumberConverter.to_english(6_000_000_000_000).should eq "six trillion"
    NumberConverter.to_english(7_000_000_000_000).should eq "seven trillion"
    NumberConverter.to_english(8_000_000_000_000).should eq "eight trillion"
    NumberConverter.to_english(9_000_000_000_000).should eq "nine trillion"
  end

  it "correctly converts quadrillions" do
    NumberConverter.to_english(1_000_000_000_000_000).should eq "one quadrillion"
    NumberConverter.to_english(2_000_000_000_000_000).should eq "two quadrillion"
    NumberConverter.to_english(3_000_000_000_000_000).should eq "three quadrillion"
    NumberConverter.to_english(4_000_000_000_000_000).should eq "four quadrillion"
    NumberConverter.to_english(5_000_000_000_000_000).should eq "five quadrillion"
    NumberConverter.to_english(6_000_000_000_000_000).should eq "six quadrillion"
    NumberConverter.to_english(7_000_000_000_000_000).should eq "seven quadrillion"
    NumberConverter.to_english(8_000_000_000_000_000).should eq "eight quadrillion"
    NumberConverter.to_english(9_000_000_000_000_000).should eq "nine quadrillion"
  end

  it "correctly converts quintillions" do
    NumberConverter.to_english(1_000_000_000_000_000_000).should eq "one quintillion"
    NumberConverter.to_english(2_000_000_000_000_000_000).should eq "two quintillion"
    NumberConverter.to_english(3_000_000_000_000_000_000).should eq "three quintillion"
    NumberConverter.to_english(4_000_000_000_000_000_000).should eq "four quintillion"
    NumberConverter.to_english(5_000_000_000_000_000_000).should eq "five quintillion"
    NumberConverter.to_english(6_000_000_000_000_000_000).should eq "six quintillion"
    NumberConverter.to_english(7_000_000_000_000_000_000).should eq "seven quintillion"
    NumberConverter.to_english(8_000_000_000_000_000_000).should eq "eight quintillion"
    NumberConverter.to_english(9_000_000_000_000_000_000).should eq "nine quintillion"
  end
end
