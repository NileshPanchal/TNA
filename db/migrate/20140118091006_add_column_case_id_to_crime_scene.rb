class AddColumnCaseIdToCrimeScene < ActiveRecord::Migration
  def change
    add_column :crime_scenes, :case_id, :integer
  end
end
