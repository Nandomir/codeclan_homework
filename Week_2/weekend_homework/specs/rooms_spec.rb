require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guests.rb')
require_relative('./guests_spec.rb')


class TestRooms < Minitest::Test

def setup()
  @room1 = Room.new(1,[])
  @room2 = Room.new(2,[])
  @room3 = Room.new(3,[])
  @room4 = Room.new(4,[])

  @karaoke_bar = [@room1, @room2, @room3, @room4]
  
end

  def test_room_number
    assert_equal(2, @room2.room_number)
  end
  
  def test_rooms_are_empty
    assert_nil(@room3.rooms_are_empty)
  end

  def test_adding_guests
    @karaoke_bar.check_in(@new_guest1)
    assert_equal(1, @room1.count)
  end

  def test_remove_guest
    @karaoke_bar.check_out(name)
    assert_equal(@room1)
  end

end