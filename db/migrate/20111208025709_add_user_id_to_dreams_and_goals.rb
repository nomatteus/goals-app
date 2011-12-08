class AddUserIdToDreamsAndGoals < ActiveRecord::Migration
  def change
    add_column :goals, :user_id, :integer
    add_column :dreams, :user_id, :integer
  end
end
