class Venuelat < ActiveRecord::Migration[5.1]
  def change
  	 change_table :events do |t|
  	    t.float "venue_lat"
	    t.float "venue_lon"
	 end

  end
end
