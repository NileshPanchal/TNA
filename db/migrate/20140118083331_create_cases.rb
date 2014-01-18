class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :name
      t.text :description
      t.string :news_feed
      t.date :case_date

      t.timestamps
    end
  end
end
