class CreateExeqs < ActiveRecord::Migration[5.0]
  def change
    create_table :exeqs do |t|
      t.integer :ex_det_cd
      t.integer :eq_det_cd

      t.timestamps
    end
  end
end
