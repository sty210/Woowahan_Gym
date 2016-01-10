class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :gym_no
      t.string :rv_wr_id
      t.datetime :rv_wr_tm
      t.text :rv_content
      t.string :rv_img
      t.float :rv_point

      t.timestamps
    end
  end
end
