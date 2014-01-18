class AddColumnCrimeSceneIdToPplInvolved < ActiveRecord::Migration
  def change
    add_column :ppl_involveds, :crime_scene_id, :integer
  end
end
