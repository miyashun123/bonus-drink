class BonusDrink
  def self.total_count_for(amount)
    count = 0
    new_bottle = 0
    remainder = 0
    used_bottle = amount
    while used_bottle >= 3 do
      new_bottle = used_bottle / 3
      remainder = used_bottle % 3
      used_bottle = new_bottle + remainder
      count += new_bottle
    end
    return amount + count
  end
  
end
amount = gets.chomp.to_i
puts BonusDrink.total_count_for(amount)