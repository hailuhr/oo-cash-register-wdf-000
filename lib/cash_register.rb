class CashRegister

  attr_accessor :total

  def discount
    @discount
  end

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price)
    self.total += price
    #self.total = @(or no @)total + price
    # @total += price
    #it goes up the chain to see if its a local variable
    #or check if its a method call
  end

end
