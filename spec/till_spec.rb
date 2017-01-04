describe Till do

  let(:till){Till.new}

  context 'initialize' do
    it 'Loads the price list' do
      expect(till.price_list.kind_of? Hash).to be true
    end

    it 'has a tax level set' do
      expect(till.tax).to eq 8.64
    end
  end

  context 'adds items to an order' do
    it 'has empty current order on start' do
      expect(till.current_order).to be_empty
    end

    it 'adds item to an order' do
      till.add_item('Cappucino', 4)

      expect(till.current_order).to eq [{item: 'Cappucino', quantity: 4}]
    end
  end

  context 'accepting payment' do
    it 'calculates the correct change' do
      allow(till).to receive(:total_due).and_return(17.28)

      expect(till.payment(20)).to eq 2.72
    end
  end
end