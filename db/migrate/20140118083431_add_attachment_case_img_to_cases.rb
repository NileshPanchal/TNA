class AddAttachmentCaseImgToCases < ActiveRecord::Migration
  def self.up
    change_table :cases do |t|
      t.attachment :case_img
    end
  end

  def self.down
    drop_attached_file :cases, :case_img
  end
end
