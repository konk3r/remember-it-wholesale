class Location
  attr_reader :prompt

  def initialize (prompt)
    @prompt = prompt
  end

  def set_loc_prompt (loc_prompt)
    @prompt = loc_prompt
  end
end
