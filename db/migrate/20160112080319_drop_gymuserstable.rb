class DropGymuserstable < ActiveRecord::Migration[5.0]
  def change
  end

  def down
    drop_table :gym_users
  end
end
