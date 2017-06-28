#use this file and this directory
class CreditCard
  def initialize(number, valid = false)
    @number = number
    @valid = valid
    def number
      @number
    end
    def valid
      @valid
    end
    def is_valid?
      finalnumber = get_final_sum(@number)
      if finalnumber % 10 == 0
        @valid = true
        puts "The number is valid."
      else
        @valid = false
        puts "The number is invalid."
      end
    end
  end
end

def right_digit(number)
  number.to_i % 10
end

def left_digit(number)
  number.to_i / 10
end

#add the two digits.  left digit will always = 0
# if there is only one digit when dealing with
# integers
def sum_digits(number)
  number = number.to_i
  number = number * 2
  right_digit(number) + left_digit(number)
end

# fix this function.  it is returning a range for some reason
def transform_digits(ccnumber)
  ccnumber.each_with_index do |number, index|
  if (index % 2 == 0)
      ccnumber[index] = sum_digits(number)
    end
  end
end

#convert cc number to array
def cc_number_toarray(number)
  number.to_s.split('')
end

#add the converted numbers and return the total
def add_cc_numbers(number)
  total = 0
  number.each do |ccnumber|
    total = total + ccnumber.to_i
  end
  return total
end

#do the things
def get_final_sum(number)
  ccnumber = cc_number_toarray(number)
  digits = transform_digits(ccnumber)
  add_cc_numbers(digits)
end

cc1 = CreditCard.new("5541808923795240")
cc2 = CreditCard.new("4024007136512380")
cc3 = CreditCard.new("6011797668867828")

cc4 = CreditCard.new("5541801923795240")
cc5 = CreditCard.new("4024007106512380")
cc6 = CreditCard.new("6011797668868728")

cc7 = CreditCard.new("342804633855673")
cc8 = CreditCard.new("342801633855673")

puts cc1.is_valid?
puts cc2.is_valid?
puts cc3.is_valid?
puts cc4.is_valid?
puts cc5.is_valid?
puts cc6.is_valid?
puts cc7.is_valid?
puts cc8.is_valid?
