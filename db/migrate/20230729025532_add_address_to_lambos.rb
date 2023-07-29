class AddAddressToLambos < ActiveRecord::Migration[7.0]
  def change
    add_column :lambos, :address, :string
  end
end
