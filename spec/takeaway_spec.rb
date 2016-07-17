require 'takeaway'

describe Takeaway do
  subject(:takeaway) {described_class.new}
  let(:dish1) {double :dish, name: "Pad Thai", price: 10}
  let(:dish2) {double :dish, name: "Dumplings", price: 5}
  let(:text) {double :text}

  describe '#show_menu' do
    it 'displays a menu to a customer' do
      expect(takeaway.show_menu).to eq []
    end
  end

  describe '#check_total' do
    context 'in the context that an order has been placed' do
      it 'will return the total cost of the order' do
        takeaway.customer_order.place_order(dish1)
        takeaway.customer_order.place_order(dish2)
        expect(takeaway.check_total).to eq "Your order will cost £15"
      end
    end
  end

#describe '#confirm_order' do
#  it 'sends a payment confirmation text message' do
#    allow(confirm_order).to receive(:send_text).and_return "Thanks!"
#    expect(takeaway.confirm_order).to eq "Thanks!"
#  end
#end

end
