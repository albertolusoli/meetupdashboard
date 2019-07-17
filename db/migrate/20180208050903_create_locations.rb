class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
    	t.text :city
    	t.text :state
    	t.text :country
    	t.float :lat
    	t.float :lon
    	t.integer :radius, limit: 1
      t.timestamps
    end
  end
end
