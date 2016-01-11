class CreateGymusers < ActiveRecord::Migration[5.0]
  def change
<<<<<<< HEAD
    #drop_table :gym_users
=======
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
    create_table :gymusers do |t|
      t.integer :gym_no
      t.integer :user_no

      t.timestamps
    end
  end
end
