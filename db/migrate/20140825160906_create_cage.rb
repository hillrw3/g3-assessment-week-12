class CreateCage < ActiveRecord::Migration
  def change
    create_table :cages do |t|
      t.string :name
      t.integer :year
      t.string :synopsis
    end
  end
end
