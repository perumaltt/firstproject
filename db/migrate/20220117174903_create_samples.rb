class CreateSamples < ActiveRecord::Migration[6.0]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :class
      t.string :roll

      t.timestamps
    end
  end
end
