require 'order'

describe Order do
  subject(:order) {described_class.new}
  let(:dish1) {double :dish, name: "Pad Thai", price: 5}

  describe '#place_order' do
    it 'combines the dish and the ordered quantity into a hash' do
      order.define_order(dish1, 2)
      expect(order.order).to include(dish: dish1, quantity: 2)
    end
    it 'calculates the cost of the order' do
      order.define_order(dish1, 3)
      expect(order.order_cost).to eq 15
    end
  end

end
