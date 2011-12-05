class AddCompletionDateGoalToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :completion_target, :date
  end
end
