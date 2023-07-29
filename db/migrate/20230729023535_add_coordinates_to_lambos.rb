class AddCoordinatesToLambos < ActiveRecord::Migration[7.0]
  def change
    add_column :lambos, :latitude, :float
    add_column :lambos, :longitude, :float
  end
end
