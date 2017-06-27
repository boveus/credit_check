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

cc1 = CreditCard.new("1231231")
cc1.isvalid
puts cc1.valid
