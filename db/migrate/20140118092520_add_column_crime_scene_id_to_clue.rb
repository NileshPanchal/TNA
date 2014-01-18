class AddColumnCrimeSceneIdToClue < ActiveRecord::Migration
  def change
    add_column :clues, :crime_scene_id, :integer
  end
end
