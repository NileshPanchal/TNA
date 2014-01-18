class Clue < ActiveRecord::Base
  attr_accessible :description, :name,:clue_img

  has_attached_file :clue_img

  belongs_to :crime_scene
end
