class CreateCrimeScenes < ActiveRecord::Migration
  def change
    create_table :crime_scenes do |t|
      t.string :name
      t.text :description
      t.attachment :crime_scene_img

      t.timestamps
    end
  end
end
