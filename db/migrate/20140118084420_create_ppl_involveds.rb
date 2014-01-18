class CreatePplInvolveds < ActiveRecord::Migration
  def change
    create_table :ppl_involveds do |t|
      t.string :name
      t.text :description
      t.attachment :avtar_img
      t.text :statement
      t.integer :score
      t.integer :xp
      t.integer :cost
      t.string :type

      t.timestamps
    end
  end
end
