class Goal < ActiveRecord::Base

  attr_accessible :title, :order, :state, :completion_target

  belongs_to :user

  def self.valid_states
    [:focused, :active, :someday]
  end

  # Renamed from is_owner? since we might allow admins to edit
  def can_edit? user
    #Rails.logger.info "%%%%%%%%"
    #Rails.logger.info "Current User id is #{user.id}"
    #Rails.logger.info "Goal User id is #{self.user_id}"
    user.id == self.user_id
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
