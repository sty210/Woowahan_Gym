class CreateGymusers < ActiveRecord::Migration[5.0]
  def change
    #drop_table :gym_users
    create_table :gymusers do |t|
      t.integer :gym_no
      t.integer :user_no

      t.timestamps
    end
  end
end
