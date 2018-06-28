require 'pry'

class CashRegister
  attr_accessor :items, :transaction, :price, :quantity, :total, :discount
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(discount = nil, total = 0)
    @items = []
    @transaction = transaction
    @price = price
    @quantity = quantity
    @total = total
    @discount = discount
    @@all << self
  end

  def add_item(item, price, quantity = 1)
    @total = @total + (price * quantity)
    @items << item * quantity
  end
  
  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      self.total = (1-(self.discount.to_f/100)) * self.total
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
end
