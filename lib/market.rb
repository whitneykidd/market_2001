class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.flat_map {|vendor| vendor.name}
  end

  def vendors_that_sell(item)
    @vendors.flat_map do |item|
    require "pry"; binding.pry
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(item)
    end
  end
end
