class CreateCrimeScenes < ActiveRecord::Migration
  def change
    create_table :crime_scenes do |t|
      t.string :name
      t.text :description
      t.attachment :case_img

      t.timestamps
    end
  end
end
