class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :surename
      t.float :money, :null => false, :default => 10000

      t.timestamps null: false
    end
  end
end
