class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :user_pw
      t.string :user_nm
      t.string :user_tel
      t.date :user_rgt_day
      t.decimal :rsd_rgn_cd
      t.decimal :mileage

      t.timestamps
    end
  end
end
