class CrimeScene < ActiveRecord::Base
  attr_accessible :crime_scene_img, :description, :name

  has_attached_file :crime_scene_img



  belongs_to :case

  has_many :victims,:dependent => :destroy
  has_many :clues,:dependent => :destroy
  has_many :ppl_involveds,:dependent => :destroy
end
