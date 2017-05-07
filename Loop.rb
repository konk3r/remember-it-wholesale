require_relative 'Location.rb'

class Loop
  def run
    locationx = 2
    locationy = 1
    d1 = Location.new ("The swamp meets a sheer clifface on the North.")
    d2 = Location.new ("A methane swamp dominates the western horizon.")
    d3 = Location.new ("Nothing but snow here, and methane rapids to the South.")
    d4 = Location.new ("There is a sheer clifface to the North.")
    d5 = Location.new ("A clifface dominates the northern horizon.")
    d6 = Location.new ("Tracks, moving East along the base of a clifface to the North.")
    d7 = Location.new ("Tracks lead up to a sheer clifface and reveal a steep path...")
    top_row = Array.new
    mid_row = Array.new
    low_row = Array.new
    top_row << d1
    top_row << d2
    top_row << d3
    mid_row << d4
    mid_row << d5
    low_row << d6
    low_row << d7
    map = Array.new
    map << top_row
    map << mid_row
    map << low_row

    while true do
      local_location = map[locationx][locationy]
      puts "#{local_location.prompt} \nYou are at location #{locationx + 1},#{locationy + 1} Which direction would you like to go?"
      direction = gets.chomp
      if direction == "east"
        if locationx == 4
          puts "There's nothing more in that direction..."
        else
          locationx = locationx + 1
        end
      elsif direction == "west"
        if locationx == 0
          puts "There's nothing more in that direction..."
        else
          locationx = locationx - 1
        end
      elsif direction == "north"
        if locationy == 0
          puts "You can go no further in that direction..."
        else locationy = locationy - 1
        end
      elsif direction == "south"
        if locationy == 2
          puts "You can go no further in that direction..."
        else
          locationy = locationy + 1
        end
      else
        puts "Could you repeat that?"
      end
    end
  end
end
