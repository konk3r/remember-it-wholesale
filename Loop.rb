require_relative 'Map.rb'

class Loop
  def run
    map = Map.new
    puts "#{map.get_prompt}"
    while true do
      puts "Which direction would you like to go?"
      direction = gets.chomp
      if direction == 'east'
        if map.can_move_e == false
          puts "The way is blocked."
        elsif map.check_walls_e == true
          puts "There is an obstruction."
        else
          map.move('east')
        end
      elsif direction == 'west'
        if map.can_move_w == false
          puts "The way is blocked."
        elsif map.check_walls_w == true
          puts "There is an obstruction."
        else
          map.move('west')
        end
      elsif direction == 'north'
        if map.can_move_n == false
          puts "The way is blocked."
        elsif map.check_walls_n == true
          puts "There is an obstruction."
        else
          map.move('north')
        end
      elsif direction == 'south'
        if map.can_move_s == false
          puts "The way is blocked."
        elsif map.check_walls_s == true
          puts "There is an obstruction."
        else
          map.move('south')
        end
      else
        puts "Could you repeat that?"
      end
      puts "#{map.get_prompt}"
    end
  end
end
