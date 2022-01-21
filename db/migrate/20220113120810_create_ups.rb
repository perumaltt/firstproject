class CreateUps < ActiveRecord::Migration[6.0]
  def change
    create_table :ups do |t|
      t.string :nickname
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
