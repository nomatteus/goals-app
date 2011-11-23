class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :title
      t.integer :order
      t.string :group

      t.timestamps
    end
  end
end
