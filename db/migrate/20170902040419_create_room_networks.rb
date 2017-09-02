class CreateRoomNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :room_networks do |t|
      t.string :name
      t.string :model
      t.string :code
      t.string :mandated

      t.timestamps
    end
  end
end
