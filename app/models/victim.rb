class Victim < ActiveRecord::Base
  attr_accessible :description, :name, :statement, :victim_img

  belongs_to :crime_scene
end
