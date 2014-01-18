class CreateGamePlays < ActiveRecord::Migration
  def change
    create_table :game_plays do |t|
      t.integer :user_id
      t.integer :case_id
      t.integer :score
      t.integer :xp
      t.integer :level

      t.timestamps
    end
  end
end
