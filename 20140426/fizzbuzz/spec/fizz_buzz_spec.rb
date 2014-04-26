# coding: utf-8
require "spec_helper"
EXPECTS = {
  1 => 1, 2 => 2, 3 => "Fizz", 4 => 4, 5 => "Buzz", 6 => "Fizz", 7 => 7, 8 => 8, 9 => "Fizz", 10 => "Buzz",
  11 => 11, 12 => "Fizz", 13 => 13, 14 => 14, 15 => "FizzBuzz", 16 => 16, 17 => 17, 18 => "Fizz", 19 => 19, 20 => "Buzz",
  21 => "Fizz", 22 => 22, 23 => 23, 24 => "Fizz", 25 => "Buzz", 26 => 26, 27 => "Fizz", 28 => 28, 29 => 29, 30 => "FizzBuzz"
}

describe FizzBuzz do
  describe ".get" do
    context "when given 1" do
      it "get 1" do
        expect(FizzBuzz.get(1)).to eq 1
      end
    end
    context "when given 3" do
      it "get Fizz" do
        expect(FizzBuzz.get(3)).to eq "Fizz"
      end
    end
    context "when given 5" do
      it "get Buzz" do
        expect(FizzBuzz.get(5)).to eq "Buzz"
      end
    end
    context "when given 15" do
      it "get 15" do
        expect(FizzBuzz.get(15)).to eq "FizzBuzz"
      end
    end
    EXPECTS.each do |arg, expect|
      it "get expected value" do
        expect(FizzBuzz.get(arg)).to eq expect
      end
    end
  end

  describe ".show" do
    EXPECTS.each do |arg, expect|
      it "get expected value" do
        output = capture(:stdout) do
          FizzBuzz.show(arg)
        end.strip
        expect(output).to eq expect.to_s
      end
    end
  end
end
