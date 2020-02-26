class Vendor
  attr_reader :name, :vendor_inventory
  def initialize(name)
    @name = name
    @vendor_inventory = []
  end
end
