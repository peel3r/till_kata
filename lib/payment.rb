class Payment

  def calculate_change  due, payment
    (payment - due).round(2)

  end

end