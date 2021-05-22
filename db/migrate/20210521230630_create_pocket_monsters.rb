class CreatePocketMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :pocket_monsters do |t|
      t.string :name
      t.string :number
      t.string :image
      t.string :shiny

      t.timestamps
    end
  end
end
