require "spec"
require "../src/number_to_lithuanian"

describe Lithuanian do
  it "correctly converts numbers from -19 to 19" do
    Lithuanian.convert_number(-19).should eq "minus devyniolika"
    Lithuanian.convert_number(-18).should eq "minus aštuoniolika"
    Lithuanian.convert_number(-17).should eq "minus septyniolika"
    Lithuanian.convert_number(-16).should eq "minus šešiolika"
    Lithuanian.convert_number(-15).should eq "minus penkiolika"
    Lithuanian.convert_number(-14).should eq "minus keturiolika"
    Lithuanian.convert_number(-13).should eq "minus trylika"
    Lithuanian.convert_number(-12).should eq "minus dvylika"
    Lithuanian.convert_number(-11).should eq "minus vienuolika"
    Lithuanian.convert_number(-10).should eq "minus dešimt"
    Lithuanian.convert_number(-9).should eq "minus devyni"
    Lithuanian.convert_number(-8).should eq "minus aštuoni"
    Lithuanian.convert_number(-7).should eq "minus septyni"
    Lithuanian.convert_number(-6).should eq "minus šeši"
    Lithuanian.convert_number(-5).should eq "minus penki"
    Lithuanian.convert_number(-4).should eq "minus keturi"
    Lithuanian.convert_number(-3).should eq "minus trys"
    Lithuanian.convert_number(-2).should eq "minus du"
    Lithuanian.convert_number(-1).should eq "minus vienas"
    Lithuanian.convert_number(0).should eq "nulis"
    Lithuanian.convert_number(1).should eq "vienas"
    Lithuanian.convert_number(2).should eq "du"
    Lithuanian.convert_number(3).should eq "trys"
    Lithuanian.convert_number(4).should eq "keturi"
    Lithuanian.convert_number(5).should eq "penki"
    Lithuanian.convert_number(6).should eq "šeši"
    Lithuanian.convert_number(7).should eq "septyni"
    Lithuanian.convert_number(8).should eq "aštuoni"
    Lithuanian.convert_number(9).should eq "devyni"
    Lithuanian.convert_number(10).should eq "dešimt"
    Lithuanian.convert_number(11).should eq "vienuolika"
    Lithuanian.convert_number(12).should eq "dvylika"
    Lithuanian.convert_number(13).should eq "trylika"
    Lithuanian.convert_number(14).should eq "keturiolika"
    Lithuanian.convert_number(15).should eq "penkiolika"
    Lithuanian.convert_number(16).should eq "šešiolika"
    Lithuanian.convert_number(17).should eq "septyniolika"
    Lithuanian.convert_number(18).should eq "aštuoniolika"
    Lithuanian.convert_number(19).should eq "devyniolika"
  end

  it "correctly converts tens" do
    Lithuanian.convert_number(10).should eq "dešimt"
    Lithuanian.convert_number(20).should eq "dvidešimt"
    Lithuanian.convert_number(30).should eq "trisdešimt"
    Lithuanian.convert_number(40).should eq "keturiasdešimt"
    Lithuanian.convert_number(50).should eq "penkiasdešimt"
    Lithuanian.convert_number(60).should eq "šešiasdešimt"
    Lithuanian.convert_number(70).should eq "septyniasdešimt"
    Lithuanian.convert_number(80).should eq "aštuoniasdešimt"
    Lithuanian.convert_number(90).should eq "devyniasdešimt"
  end

  it "correctly converts hundreds" do
    Lithuanian.convert_number(100).should eq "vienas šimtas"
    Lithuanian.convert_number(200).should eq "du šimtai"
    Lithuanian.convert_number(300).should eq "trys šimtai"
    Lithuanian.convert_number(400).should eq "keturi šimtai"
    Lithuanian.convert_number(500).should eq "penki šimtai"
    Lithuanian.convert_number(600).should eq "šeši šimtai"
    Lithuanian.convert_number(700).should eq "septyni šimtai"
    Lithuanian.convert_number(800).should eq "aštuoni šimtai"
    Lithuanian.convert_number(900).should eq "devyni šimtai"
  end

  it "correctly converts thousands" do
    Lithuanian.convert_number(1_000).should eq "vienas tūkstantis"
    Lithuanian.convert_number(2_000).should eq "du tūkstančiai"
    Lithuanian.convert_number(3_000).should eq "trys tūkstančiai"
    Lithuanian.convert_number(4_000).should eq "keturi tūkstančiai"
    Lithuanian.convert_number(5_000).should eq "penki tūkstančiai"
    Lithuanian.convert_number(6_000).should eq "šeši tūkstančiai"
    Lithuanian.convert_number(7_000).should eq "septyni tūkstančiai"
    Lithuanian.convert_number(8_000).should eq "aštuoni tūkstančiai"
    Lithuanian.convert_number(9_000).should eq "devyni tūkstančiai"
  end

  it "correctly converts millions" do
    Lithuanian.convert_number(1_000_000).should eq "vienas milijonas"
    Lithuanian.convert_number(2_000_000).should eq "du milijonai"
    Lithuanian.convert_number(3_000_000).should eq "trys milijonai"
    Lithuanian.convert_number(4_000_000).should eq "keturi milijonai"
    Lithuanian.convert_number(5_000_000).should eq "penki milijonai"
    Lithuanian.convert_number(6_000_000).should eq "šeši milijonai"
    Lithuanian.convert_number(7_000_000).should eq "septyni milijonai"
    Lithuanian.convert_number(8_000_000).should eq "aštuoni milijonai"
    Lithuanian.convert_number(9_000_000).should eq "devyni milijonai"
  end

  it "correctly converts billions" do
    Lithuanian.convert_number(1_000_000_000).should eq "vienas milijardas"
    Lithuanian.convert_number(2_000_000_000).should eq "du milijardai"
    Lithuanian.convert_number(3_000_000_000).should eq "trys milijardai"
    Lithuanian.convert_number(4_000_000_000).should eq "keturi milijardai"
    Lithuanian.convert_number(5_000_000_000).should eq "penki milijardai"
    Lithuanian.convert_number(6_000_000_000).should eq "šeši milijardai"
    Lithuanian.convert_number(7_000_000_000).should eq "septyni milijardai"
    Lithuanian.convert_number(8_000_000_000).should eq "aštuoni milijardai"
    Lithuanian.convert_number(9_000_000_000).should eq "devyni milijardai"
  end

  it "correctly converts trillions" do
    Lithuanian.convert_number(1_000_000_000_000).should eq "vienas trilijonas"
    Lithuanian.convert_number(2_000_000_000_000).should eq "du trilijonai"
    Lithuanian.convert_number(3_000_000_000_000).should eq "trys trilijonai"
    Lithuanian.convert_number(4_000_000_000_000).should eq "keturi trilijonai"
    Lithuanian.convert_number(5_000_000_000_000).should eq "penki trilijonai"
    Lithuanian.convert_number(6_000_000_000_000).should eq "šeši trilijonai"
    Lithuanian.convert_number(7_000_000_000_000).should eq "septyni trilijonai"
    Lithuanian.convert_number(8_000_000_000_000).should eq "aštuoni trilijonai"
    Lithuanian.convert_number(9_000_000_000_000).should eq "devyni trilijonai"
  end

  it "correctly converts quadrillions" do
    Lithuanian.convert_number(1_000_000_000_000_000).should eq "vienas kvadrilijonas"
    Lithuanian.convert_number(2_000_000_000_000_000).should eq "du kvadrilijonai"
    Lithuanian.convert_number(3_000_000_000_000_000).should eq "trys kvadrilijonai"
    Lithuanian.convert_number(4_000_000_000_000_000).should eq "keturi kvadrilijonai"
    Lithuanian.convert_number(5_000_000_000_000_000).should eq "penki kvadrilijonai"
    Lithuanian.convert_number(6_000_000_000_000_000).should eq "šeši kvadrilijonai"
    Lithuanian.convert_number(7_000_000_000_000_000).should eq "septyni kvadrilijonai"
    Lithuanian.convert_number(8_000_000_000_000_000).should eq "aštuoni kvadrilijonai"
    Lithuanian.convert_number(9_000_000_000_000_000).should eq "devyni kvadrilijonai"
  end

  it "correctly converts quintillions" do
    Lithuanian.convert_number(1_000_000_000_000_000_000).should eq "vienas kvintilijonas"
    Lithuanian.convert_number(2_000_000_000_000_000_000).should eq "du kvintilijonai"
    Lithuanian.convert_number(3_000_000_000_000_000_000).should eq "trys kvintilijonai"
    Lithuanian.convert_number(4_000_000_000_000_000_000).should eq "keturi kvintilijonai"
    Lithuanian.convert_number(5_000_000_000_000_000_000).should eq "penki kvintilijonai"
    Lithuanian.convert_number(6_000_000_000_000_000_000).should eq "šeši kvintilijonai"
    Lithuanian.convert_number(7_000_000_000_000_000_000).should eq "septyni kvintilijonai"
    Lithuanian.convert_number(8_000_000_000_000_000_000).should eq "aštuoni kvintilijonai"
    Lithuanian.convert_number(9_000_000_000_000_000_000).should eq "devyni kvintilijonai"
  end
end
