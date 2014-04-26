# coding: utf-8
class FizzBuzz
  def self.show(num)
    puts get(num)
  end

  def self.get(num)
    if num % 15 == 0
      "FizzBuzz"
    elsif num % 5 == 0
      "Buzz"
    elsif num % 3 == 0
      "Fizz"
    else
      num
    end
  end
end
