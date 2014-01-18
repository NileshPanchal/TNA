class Case < ActiveRecord::Base
  attr_accessible :case_date, :description, :name, :news_feed,:case_img

  has_attached_file :case_img

  has_many :crime_scenes,:dependent => :destroy
  has_many :killers,:dependent => :destroy
  has_many :game_plays,:dependent => :destroy
end
