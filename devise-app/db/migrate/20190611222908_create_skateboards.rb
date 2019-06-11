class CreateSkateboards < ActiveRecord::Migration[5.2]
  def change
    create_table :skateboards do |t|
      t.string :wheel_brand
      t.float :width
      t.string :trucks_brand
      t.integer :user_id

      t.timestamps
    end
  end
end
