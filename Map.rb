require_relative 'Location.rb'

class Map
  def initialize
    @x = 1
    @y = 1
    d0 = Location.new ("There is a sheer clifface to the North, and Marsh to the West")
    d1 = Location.new ("Tracks, moving East along the base of a clifface to the North.")
    d2 = Location.new ("Tracks lead up to a sheer clifface and reveal a steep path...")
    d3 = Location.new ("A methane swamp dominates the western horizon.")
    d4 = Location.new ("The wreckage of your ship.  Nothing useful remains here.  Try not to linger.")
    d5 = Location.new ("This is the worst possible place you could be.  The worst.")
    d6 = Location.new ("Nothing but snow here, and methane rapids to the South.")
    d7 = Location.new ("Some stones have been piled in a crude cairn")
    d8 = Location.new ("While at first glance this patch of snow seems identical to any other, it is actually quite rude.")
    top_row = Array.new
    mid_row = Array.new
    low_row = Array.new
    top_row << d0
    top_row << d1
    top_row << d2
    mid_row << d3
    mid_row << d4
    mid_row << d5
    low_row << d6
    low_row << d7
    low_row << d8
    @map = Array.new
    @map << top_row
    @map << mid_row
    @map << low_row
  end

  def can_move_n
    if @x == 0
      false
    else
      true
    end
  end

  def can_move_e
    if @y == 2
      false
    else
      true
    end
  end

  def can_move_s
    if @x == 2
      false
    else
      true
    end
  end

  def can_move_w
    if @y == 0
      false
    else
      true
    end
  end

  def move (direction)
    if direction == 'north'
      @x = @x - 1
    elsif direction == 'east'
      @y = @y + 1
    elsif direction == 'south'
      @x = @x + 1
    elsif direction == 'west'
      @y = @y - 1
    end
  end

  def get_prompt
    location = @map[@x][@y]
    return location.return_prompt
  end
end