require 'pry'

class CashRegister

  attr_accessor :total


  def discount
    @discount
  end

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @all_items = []
    #makes it an instance variable, every time you make a new instance,
    #new cash register, they get their own instance of that array
    @last_price = 0
  end

  def add_item(title, price, amount = 1)
    @last_price = price

    @total += price * amount
    #self.total = @(or no @)total + price
    # @total += price
    #it goes up the chain to see if its a local variable
    #and if it can't be found, looks to see if its a method call
    amount.times do
      @all_items << title
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = total - total * (discount * 0.01)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
      @total -= @last_price
  end

end
#
# binding.pry
