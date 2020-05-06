class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.boolean :cross
      t.integer :index
      t.integer :counter
      t.integer :user_id
      t.integer :session_id

      t.timestamps
    end
  end
end
