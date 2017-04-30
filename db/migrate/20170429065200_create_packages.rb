class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :weight
      t.string :size
      t.string :warehouse_location
      t.string :recipent_address
      t.string :distance
      t.string :delivery_time
      t.string :recipent_name
      t.string :recipent_mob
      t.string :price
      t.integer :status

      t.timestamps
    end
  end
end
