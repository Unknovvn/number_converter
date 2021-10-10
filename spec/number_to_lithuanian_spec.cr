require "spec"
require "../src/number_converter"

describe NumberConverter do
  it "correctly converts numbers from -19 to 19" do
    NumberConverter.to_lithuanian(-19).should eq "minus devyniolika"
    NumberConverter.to_lithuanian(-18).should eq "minus aštuoniolika"
    NumberConverter.to_lithuanian(-17).should eq "minus septyniolika"
    NumberConverter.to_lithuanian(-16).should eq "minus šešiolika"
    NumberConverter.to_lithuanian(-15).should eq "minus penkiolika"
    NumberConverter.to_lithuanian(-14).should eq "minus keturiolika"
    NumberConverter.to_lithuanian(-13).should eq "minus trylika"
    NumberConverter.to_lithuanian(-12).should eq "minus dvylika"
    NumberConverter.to_lithuanian(-11).should eq "minus vienuolika"
    NumberConverter.to_lithuanian(-10).should eq "minus dešimt"
    NumberConverter.to_lithuanian(-9).should eq "minus devyni"
    NumberConverter.to_lithuanian(-8).should eq "minus aštuoni"
    NumberConverter.to_lithuanian(-7).should eq "minus septyni"
    NumberConverter.to_lithuanian(-6).should eq "minus šeši"
    NumberConverter.to_lithuanian(-5).should eq "minus penki"
    NumberConverter.to_lithuanian(-4).should eq "minus keturi"
    NumberConverter.to_lithuanian(-3).should eq "minus trys"
    NumberConverter.to_lithuanian(-2).should eq "minus du"
    NumberConverter.to_lithuanian(-1).should eq "minus vienas"
    NumberConverter.to_lithuanian(0).should eq "nulis"
    NumberConverter.to_lithuanian(1).should eq "vienas"
    NumberConverter.to_lithuanian(2).should eq "du"
    NumberConverter.to_lithuanian(3).should eq "trys"
    NumberConverter.to_lithuanian(4).should eq "keturi"
    NumberConverter.to_lithuanian(5).should eq "penki"
    NumberConverter.to_lithuanian(6).should eq "šeši"
    NumberConverter.to_lithuanian(7).should eq "septyni"
    NumberConverter.to_lithuanian(8).should eq "aštuoni"
    NumberConverter.to_lithuanian(9).should eq "devyni"
    NumberConverter.to_lithuanian(10).should eq "dešimt"
    NumberConverter.to_lithuanian(11).should eq "vienuolika"
    NumberConverter.to_lithuanian(12).should eq "dvylika"
    NumberConverter.to_lithuanian(13).should eq "trylika"
    NumberConverter.to_lithuanian(14).should eq "keturiolika"
    NumberConverter.to_lithuanian(15).should eq "penkiolika"
    NumberConverter.to_lithuanian(16).should eq "šešiolika"
    NumberConverter.to_lithuanian(17).should eq "septyniolika"
    NumberConverter.to_lithuanian(18).should eq "aštuoniolika"
    NumberConverter.to_lithuanian(19).should eq "devyniolika"
  end

  it "correctly converts tens" do
    NumberConverter.to_lithuanian(10).should eq "dešimt"
    NumberConverter.to_lithuanian(20).should eq "dvidešimt"
    NumberConverter.to_lithuanian(30).should eq "trisdešimt"
    NumberConverter.to_lithuanian(40).should eq "keturiasdešimt"
    NumberConverter.to_lithuanian(50).should eq "penkiasdešimt"
    NumberConverter.to_lithuanian(60).should eq "šešiasdešimt"
    NumberConverter.to_lithuanian(70).should eq "septyniasdešimt"
    NumberConverter.to_lithuanian(80).should eq "aštuoniasdešimt"
    NumberConverter.to_lithuanian(90).should eq "devyniasdešimt"
  end

  it "correctly converts hundreds" do
    NumberConverter.to_lithuanian(100).should eq "vienas šimtas"
    NumberConverter.to_lithuanian(200).should eq "du šimtai"
    NumberConverter.to_lithuanian(300).should eq "trys šimtai"
    NumberConverter.to_lithuanian(400).should eq "keturi šimtai"
    NumberConverter.to_lithuanian(500).should eq "penki šimtai"
    NumberConverter.to_lithuanian(600).should eq "šeši šimtai"
    NumberConverter.to_lithuanian(700).should eq "septyni šimtai"
    NumberConverter.to_lithuanian(800).should eq "aštuoni šimtai"
    NumberConverter.to_lithuanian(900).should eq "devyni šimtai"
  end

  it "correctly converts thousands" do
    NumberConverter.to_lithuanian(1_000).should eq "vienas tūkstantis"
    NumberConverter.to_lithuanian(2_000).should eq "du tūkstančiai"
    NumberConverter.to_lithuanian(3_000).should eq "trys tūkstančiai"
    NumberConverter.to_lithuanian(4_000).should eq "keturi tūkstančiai"
    NumberConverter.to_lithuanian(5_000).should eq "penki tūkstančiai"
    NumberConverter.to_lithuanian(6_000).should eq "šeši tūkstančiai"
    NumberConverter.to_lithuanian(7_000).should eq "septyni tūkstančiai"
    NumberConverter.to_lithuanian(8_000).should eq "aštuoni tūkstančiai"
    NumberConverter.to_lithuanian(9_000).should eq "devyni tūkstančiai"
  end

  it "correctly converts millions" do
    NumberConverter.to_lithuanian(1_000_000).should eq "vienas milijonas"
    NumberConverter.to_lithuanian(2_000_000).should eq "du milijonai"
    NumberConverter.to_lithuanian(3_000_000).should eq "trys milijonai"
    NumberConverter.to_lithuanian(4_000_000).should eq "keturi milijonai"
    NumberConverter.to_lithuanian(5_000_000).should eq "penki milijonai"
    NumberConverter.to_lithuanian(6_000_000).should eq "šeši milijonai"
    NumberConverter.to_lithuanian(7_000_000).should eq "septyni milijonai"
    NumberConverter.to_lithuanian(8_000_000).should eq "aštuoni milijonai"
    NumberConverter.to_lithuanian(9_000_000).should eq "devyni milijonai"
  end

  it "correctly converts billions" do
    NumberConverter.to_lithuanian(1_000_000_000).should eq "vienas milijardas"
    NumberConverter.to_lithuanian(2_000_000_000).should eq "du milijardai"
    NumberConverter.to_lithuanian(3_000_000_000).should eq "trys milijardai"
    NumberConverter.to_lithuanian(4_000_000_000).should eq "keturi milijardai"
    NumberConverter.to_lithuanian(5_000_000_000).should eq "penki milijardai"
    NumberConverter.to_lithuanian(6_000_000_000).should eq "šeši milijardai"
    NumberConverter.to_lithuanian(7_000_000_000).should eq "septyni milijardai"
    NumberConverter.to_lithuanian(8_000_000_000).should eq "aštuoni milijardai"
    NumberConverter.to_lithuanian(9_000_000_000).should eq "devyni milijardai"
  end

  it "correctly converts trillions" do
    NumberConverter.to_lithuanian(1_000_000_000_000).should eq "vienas trilijonas"
    NumberConverter.to_lithuanian(2_000_000_000_000).should eq "du trilijonai"
    NumberConverter.to_lithuanian(3_000_000_000_000).should eq "trys trilijonai"
    NumberConverter.to_lithuanian(4_000_000_000_000).should eq "keturi trilijonai"
    NumberConverter.to_lithuanian(5_000_000_000_000).should eq "penki trilijonai"
    NumberConverter.to_lithuanian(6_000_000_000_000).should eq "šeši trilijonai"
    NumberConverter.to_lithuanian(7_000_000_000_000).should eq "septyni trilijonai"
    NumberConverter.to_lithuanian(8_000_000_000_000).should eq "aštuoni trilijonai"
    NumberConverter.to_lithuanian(9_000_000_000_000).should eq "devyni trilijonai"
  end

  it "correctly converts quadrillions" do
    NumberConverter.to_lithuanian(1_000_000_000_000_000).should eq "vienas kvadrilijonas"
    NumberConverter.to_lithuanian(2_000_000_000_000_000).should eq "du kvadrilijonai"
    NumberConverter.to_lithuanian(3_000_000_000_000_000).should eq "trys kvadrilijonai"
    NumberConverter.to_lithuanian(4_000_000_000_000_000).should eq "keturi kvadrilijonai"
    NumberConverter.to_lithuanian(5_000_000_000_000_000).should eq "penki kvadrilijonai"
    NumberConverter.to_lithuanian(6_000_000_000_000_000).should eq "šeši kvadrilijonai"
    NumberConverter.to_lithuanian(7_000_000_000_000_000).should eq "septyni kvadrilijonai"
    NumberConverter.to_lithuanian(8_000_000_000_000_000).should eq "aštuoni kvadrilijonai"
    NumberConverter.to_lithuanian(9_000_000_000_000_000).should eq "devyni kvadrilijonai"
  end

  it "correctly converts quintillions" do
    NumberConverter.to_lithuanian(1_000_000_000_000_000_000).should eq "vienas kvintilijonas"
    NumberConverter.to_lithuanian(2_000_000_000_000_000_000).should eq "du kvintilijonai"
    NumberConverter.to_lithuanian(3_000_000_000_000_000_000).should eq "trys kvintilijonai"
    NumberConverter.to_lithuanian(4_000_000_000_000_000_000).should eq "keturi kvintilijonai"
    NumberConverter.to_lithuanian(5_000_000_000_000_000_000).should eq "penki kvintilijonai"
    NumberConverter.to_lithuanian(6_000_000_000_000_000_000).should eq "šeši kvintilijonai"
    NumberConverter.to_lithuanian(7_000_000_000_000_000_000).should eq "septyni kvintilijonai"
    NumberConverter.to_lithuanian(8_000_000_000_000_000_000).should eq "aštuoni kvintilijonai"
    NumberConverter.to_lithuanian(9_000_000_000_000_000_000).should eq "devyni kvintilijonai"
  end
end
