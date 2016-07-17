class Order

attr_reader :order

def initialize
  @order = {}
end

def define_order(dish,quantity=1)
  @order[:dish] = dish
  @order[:quantity] = quantity
end

def order_cost
  @order[:dish].price * order[:quantity]
end

end
