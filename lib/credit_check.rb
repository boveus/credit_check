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
    def isvalid
      @valid = true
    end
  end
end

class Fixnum
def is_twodigits?
  if self.to_s.size == 2
    return true
  else
    return false
  end
end
end

def right_digit(number)
  digit = number % 10
end

def left_digit(number)
  number / 10
end

def cc_number_toarray(number)
   number.to_s.split('')
 end

cc1 = CreditCard.new("1231231")

print cc_number_toarray(cc1.number)
