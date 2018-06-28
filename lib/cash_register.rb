require 'pry'

class CashRegister
  attr_accessor :item, :transaction, :price, :quantity, :total, :discount
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(discount = 20, total = 0)
    @item = item
    @transaction = transaction
    @price = price
    @quantity = quantity
    @total = total
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total = @total + (price * quantity)
  end
  
  def apply_discount
    if self.total.exclude?(discount)
      "There is no discount to apply."
    else
      self.total = (1-(self.discount.to_f/100)) * self.total
    "After the discount, the total comes to $#{self.total.to_i}."
    end
  end  

end
