class CreateExties < ActiveRecord::Migration[5.0]
  def change
    create_table :exties do |t|
      t.integer :ex_det_cd
      t.integer :ty_det_cd

      t.timestamps
    end
  end
end
