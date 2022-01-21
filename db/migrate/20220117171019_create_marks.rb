class CreateMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :marks do |t|
      t.string :m1
      t.string :m2
      t.string :m3
      t.string :m4
      t.string :m5

      t.timestamps
    end
  end
end
