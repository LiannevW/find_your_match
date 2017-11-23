class CreateJoinTableUserDay < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :days do |t|
      t.index [:user_id, :day_id]
      t.index [:day_id, :user_id]
    end
  end
end
