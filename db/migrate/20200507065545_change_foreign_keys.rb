class ChangeForeignKeys < ActiveRecord::Migration[6.0]
  def change
    rename_column :turns, :user_id, :user_id
    rename_column :turns, :session_id, :session_id
  end
end
