class Victim < ActiveRecord::Base
  attr_accessible :description, :name, :statement, :victim_img,:crime_scene_id

  has_attached_file :victim_img

  belongs_to :crime_scene
end
