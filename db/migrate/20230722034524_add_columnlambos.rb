class AddColumnlambos < ActiveRecord::Migration[7.0]
  def change
    add_column :lambos, :image, :string
  end
end
