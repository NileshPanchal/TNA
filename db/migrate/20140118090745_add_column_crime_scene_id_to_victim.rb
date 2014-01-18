class AddColumnCrimeSceneIdToVictim < ActiveRecord::Migration
  def change
    add_column :victims, :crime_scene_id, :integer
  end
end
