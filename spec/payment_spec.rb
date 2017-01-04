describe Payment do
  context 'calculates the correct amount of change' do

    let(:payment){Payment.new}

    it 'calculates  total due' do
      expect(payment.calculate_change(17.28, 20)).to eq 2.72
    end
  end
end