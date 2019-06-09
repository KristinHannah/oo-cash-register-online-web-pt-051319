require "pry"

class CashRegister
  
  attr_accessor :quantity, :price, :total
  @@last_transaction = []
  @items = []
  
  def initialize(*employee_discount)
    @total = 0 
      def discount=(*employee_discount)
        @employee_discount = employee_discount[0][0]
      end 
      def discount
        @employee_discount
      end 
    self.discount = employee_discount
  end 
  
  def total
    @total 
  end 
  
  def items 
    @items 
  end 
  
  def add_item(title, price, *quantity)
    @items = items.push(title)
    if quantity != []
      to_add = price * quantity[0].to_s.to_f
    else 
      to_add = price 
    end 
      @@last_transaction << to_add
      self.total += to_add
  end 
  
  def last_transaction
    @@last_transaction[-1]
  end 
  
  def apply_discount
    if @employee_discount == 20
      savings = total.to_f * discount.to_f / 100.to_f
      new_total = total.to_f - savings.to_f
      self.total = new_total.to_i
      return "After the discount, the total comes to $#{total}."
     else 
      return "There is no discount to apply."
     end 
  end 

  def void_last_transaction
    @total = total - last_transaction
    @total
  end 
  
end 