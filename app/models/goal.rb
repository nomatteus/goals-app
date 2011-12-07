class Goal < ActiveRecord::Base

  def self.valid_states
    [:focused, :active, :someday]
  end

  def self.update_goal_order goals
    goals.each_with_index do |goal_id, i| 
      if is_owner? goal_id
        g = Goal.find(goal_id).update_attributes({order: i + 1})
      end
    end
  end

  # TO DO: BUILD THIS IN!
  def self.is_owner? id
    true
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
