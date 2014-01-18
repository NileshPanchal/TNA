class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.text :description
      t.attachment :victim_img
      t.text :statement

      t.timestamps
    end
  end
end
