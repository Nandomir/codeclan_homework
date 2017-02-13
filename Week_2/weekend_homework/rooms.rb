require_relative('./guests.rb')

class Room

attr_reader :room_number, :guest_list
def initialize(room_number, guest_list)
  @room_number = room_number
end

  def room_number()
    return @room_number
  end

  def rooms_are_empty()
    return @guest_list
  end

  def check_in(name)
     checking_amount_of_guests = @karaoke_bar.each {|rooms| rooms.lenght < 4}
        if checking_amount_of_guests == true
          @karaoke_bar.select {|empty_room| empty_room.push(name) if empty_room == nil }
        else
          puts "Too many guests"
       end
  end

  def check_out(name)
    if @karaoke_bar.include?(name) == true
      
  end

end
