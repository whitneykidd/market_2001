class Vendor
  attr_reader :name, :vendor_inventory
  def initialize(name)
    @name = name
    @vendor_inventory = Hash.new(0)
  end

  def check_stock(item)
    @vendor_inventory[:item]
  end
end
