class PplInvolved < ActiveRecord::Base
  attr_accessible :avtar_img, :cost, :description, :name, :score, :statement, :type, :xp

  has_attached_file :avtar_img

  belongs_to :crime_scene
end
