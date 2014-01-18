class PplInvolved < ActiveRecord::Base
  attr_accessible :avtar_img, :cost, :description, :name, :score, :statement, :type, :xp

  belongs_to :crime_scene
end
