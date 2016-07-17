require 'ordertotal'

describe OrderTotal do
  subject(:ordertotal) {described_class.new}

  let(:dish1) {double :dish, dish: "Pad Thai", quantity: 2}
  let(:dish2) {double :dish, dish: "Dumplings", quantity: 3}

  describe '#place_order' do
    it { is_expected.to respond_to(:place_order).with(2).arguments }
    it 'adds each indivudal order hash into a total_order array' do
    ordertotal.place_order(dish1)
    ordertotal.place_order(dish2)
    expect(ordertotal.total_order).to include(:dish => "Pad Thai", :quantity => 2)
    end
    it 'will calculate a total bill' do
      order.place_order(dish1, 2)
      order.place_order(dish2, 3)
      expect(order.total_bill).to eq 28
    end

  end

end
