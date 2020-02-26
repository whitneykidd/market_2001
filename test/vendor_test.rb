require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'


class VendorTest < Minitest::Test
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  def test_it_exists
    assert_instance_of Vendor, @vendor
  end

  def test_it_has_attributes
    assert_equal "Rocky Mountain Fresh", @vendor.name
    expected = {}
    assert_equal expected, @vendor.inventory
  end

  def test_stock_starts_at_zero
    assert_equal 0, @vendor.check_stock(@item1)
  end

  def test_it_can_stock_items
    @vendor.stock(@item1, 30)
    assert_equal 30, @vendor.check_stock(@item1)
    expected1 = { @item1 => 30 }
    assert_equal expected1, @vendor.inventory

    @vendor.stock(@item1, 25)
    assert_equal 55, @vendor.check_stock(@item1)
    expected2 = { @item1 => 55 }
    assert_equal expected2, @vendor.inventory

    @vendor.stock(@item2, 12)
    assert_equal 12, @vendor.check_stock(@item2)
    expected3 = { @item1 => 55,
                  @item2 => 12
                }
    assert_equal expected3, @vendor.inventory
  end
end
