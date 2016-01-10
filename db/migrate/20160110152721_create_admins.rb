class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :adm_id
      t.string :adm_pw
      t.string :adm_nm
      t.string :adm_tel

      t.timestamps
    end
  end
end
