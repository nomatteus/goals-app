class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :order
      t.string :state

      t.timestamps
    end
  end
end
