require('minitest/autorun')
require('minitest/rg')
require_relative('../guests.rb')


class TestGuests < Minitest::Test

def setup()
  @new_guest1 = Guest.new("Jeff")
  @new_guest2 = Guest.new("Jay")
  @new_guest3 = Guest.new("Helen")
  @new_guest4 = Guest.new("Jimmy")
end

  def test_guest_name
    assert_equal("Jay", @new_guest2.get_name)
  end
  
end