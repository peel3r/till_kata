class Order
  attr_reader :current_order

  def initialize
    @current_order = []
  end

  def add item, quantity=1
    current_order << { item: item, quantity: quantity }

  end

end