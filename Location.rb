class Location
  attr_writer :n_wall, :s_wall, :e_wall, :w_wall
  def initialize (prompt)
    @prompt = prompt
    @n_wall = n_wall
    @s_wall = s_wall
    @e_wall = e_wall
    @w_wall = w_wall
  end

  def set_loc_prompt (loc_prompt)
    @prompt = loc_prompt
  end

  def return_prompt
    return @prompt
  end

  def n_wall
    return @n_wall
  end

  def e_wall
    return @e_wall
  end

  def s_wall
    return @s_wall
  end

  def w_wall
    return @w_wall
  end
end
