class CreateClothes < ActiveRecord::Migration[5.1]
  def change
    create_table :clothes do |t|
      t.string :code
      t.string :model
      t.string :color
      t.string :size
      t.string :price

      t.timestamps
    end
  end
end
