class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
<<<<<<< HEAD
=======
    # drop_table :admins
>>>>>>> d7e83b8befe27844801ac049d523dd392e8bd944
    create_table :admins do |t|
      t.string :adm_id
      t.string :adm_pw
      t.string :adm_nm
      t.string :adm_tel

      t.timestamps
    end
  end
end
