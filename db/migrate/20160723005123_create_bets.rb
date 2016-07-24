class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :round_id
      t.integer :player_id
      t.float :amount_betted
      t.integer :roulette_choice

      t.timestamps null: false
    end
  end
end
