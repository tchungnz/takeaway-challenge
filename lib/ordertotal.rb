class OrderTotal

attr_reader :order, :total_order

def initialize
  @total_order = []
  @total_bill = 0
  @delivery_time = 0
  @order = Order.new
end

def place_order(dish,quantity=1)
  @order.define_order(dish,quantity)
  @total_order << @order.order
end

private

def find_total_bill
  @total_order.each do |order|
    @total_bill += (order[:dish].price * order[:quantity])
  end
  @total_bill
end

def find_time
  find_order_time
  find_delivery_time
end

def find_order_time
  @order_time = Time.new
end

def find_delivery_time
  @delivery_time = @order_time + (30*60)
  @delivery_time = "#{'%02d' % delivery_time.hour}:#{'%02d' % delivery_time.min}"
end

end
