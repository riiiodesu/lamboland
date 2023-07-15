class CreateLambos < ActiveRecord::Migration[7.0]
  def change
    create_table :lambos do |t|
      t.string :model
      t.integer :year
      t.integer :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
