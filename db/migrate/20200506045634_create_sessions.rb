class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.integer :counter
      t.integer :user_1
      t.integer :user_2
      t.timestamps
    end
  end
end
