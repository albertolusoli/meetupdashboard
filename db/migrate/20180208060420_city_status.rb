class CityStatus < ActiveRecord::Migration[5.1]
  def change
  	 change_table :locations do |t|
  	 	t.boolean :status, default: :true
    end
  end
end
