require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity = 1)
    # self.total = self.total + (amount * quantity) notes for +=
      self.total += amount * quantity
      self.last_transaction = amount * quantity
        quantity.times do
          self.items << title
        end 
    end

    def apply_discount
      self.total = self.total - ((self.discount.to_f/100.0) * self.total)
        if self.discount > 0
          "After the discount, the total comes to $#{self.total.to_i}."
        else
          "There is no discount to apply."
        end
    end

    def void_last_transaction
      self.last_transaction = 0.0
      self.total = self.last_transaction
    end


end