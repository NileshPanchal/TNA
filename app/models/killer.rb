class Killer < ActiveRecord::Base
  attr_accessible :description, :killer_img, :name, :statement

  has_attached_file :killer_img
end
