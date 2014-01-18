class CreateKillers < ActiveRecord::Migration
  def change
    create_table :killers do |t|
      t.string :name
      t.text :description
      t.attachment :killer_img
      t.text :statement

      t.timestamps
    end
  end
end
