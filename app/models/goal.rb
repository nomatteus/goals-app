class Goal < ActiveRecord::Base

  def self.valid_states
    [:focused, :active, :someday]
  end

  #validates_inclusion_of :state, :in => @valid_states
=begin
def state
    read_attribute(:state).to_sym
  end

  def state= (value)
    write_attribute(:state, value.to_s)
  end
=end

end
