class AddColumnCaseIdToKiller < ActiveRecord::Migration
  def change
    add_column :killers, :case_id, :integer
  end
end
