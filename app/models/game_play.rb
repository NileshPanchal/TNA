class GamePlay < ActiveRecord::Base
  attr_accessible :case_id, :level, :score, :user_id, :xp

  belongs_to :case
end
