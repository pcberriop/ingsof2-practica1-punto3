class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :owner
      t.string :phone
      t.string :model
      t.string :license_plate
      t.string :motor

      t.timestamps
    end
  end
end
