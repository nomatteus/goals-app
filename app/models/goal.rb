class Goal < ActiveRecord::Base
  validates_inclusion_of :state, :in => [:focused, :active, :someday]

  def state
    read_attribute(:state).to_sym
  end

  def state= (value)
    write_attribute(:state, value.to_s)
  end
end
