class ChangeForeignKeys < ActiveRecord::Migration[6.0]
  def change
    rename_column :turns, :users_id, :user_id
    rename_column :turns, :sessions_id, :session_id
  end
end
