class Dream < ActiveRecord::Base

  attr_accessible :title, :order, :group

  belongs_to :user

  def self.groups
    Dream.select("DISTINCT(`group`)")
  end

  def self.dreams_by_group
    group_collection = []
    groups.each do |g|
      group_collection << {
        :group => g.group,
        :dreams => Dream.where(:group => g.group)
      }
    end
    group_collection
  end
end
