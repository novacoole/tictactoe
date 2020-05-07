class TurnsController < ApplicationController
  
  def new
  end

  def create
    Turn.create(
      cross:params[:cross], 
      index:params[:index], 
      counter:params[:counter],
      users_id:params[:users_id],
      sessions_id:params[:sessions_id]
    )
  end

  def show
  end
end


t.boolean "cross"
t.integer "index"
t.integer "counter"
t.bigint "users_id"
t.bigint "sessions_id"
t.datetime "created_at", precision: 6, null: false
t.datetime "updated_at", precision: 6, null: false
t.index ["sessions_id"], name: "index_turns_on_sessions_id"
t.index ["users_id"], name: "index_turns_on_users_id"