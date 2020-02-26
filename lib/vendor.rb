class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[:item]
  end

  def stock(item, quantity)
    @inventory[:item] = quantity
  end


#   def owed
#  amount_owed = Hash.new(0)
#  @participants.each do |participant_name, cost|
#    amount_owed[participant_name] += split - cost
#  end
#  amount_owed
# end
end
