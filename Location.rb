class Location

  def initialize (prompt)
    @prompt = prompt
  end

  def set_loc_prompt (loc_prompt)
    @prompt = loc_prompt
  end

  def return_prompt
    return @prompt
  end
end
