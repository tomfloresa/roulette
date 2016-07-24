class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :roulette_result

      t.timestamps null: false
    end
  end
end
