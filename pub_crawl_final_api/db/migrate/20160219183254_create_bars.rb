class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :province
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
