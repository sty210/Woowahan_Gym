class CreateExpts < ActiveRecord::Migration[5.0]
  def change
    create_table :expts do |t|
      t.integer :ex_det_cd
      t.integer :pt_det_cd

      t.timestamps
    end
  end
end
