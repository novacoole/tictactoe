class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.boolean :cross
      t.integer :index
      t.references :users
      t.references :sessions

      t.timestamps
    end
  end
end
