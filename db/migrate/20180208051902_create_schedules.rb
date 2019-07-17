class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
    	t.datetime :time
    	t.boolean :groups, default: :true
    	 t.boolean :group_members, default: :true
    	t.boolean :events, default: :true
    	t.boolean :rsvps, default: :true
    	t.boolean :events_upcoming, default: :true
    	t.boolean :events_past, default: :true
     	t.boolean :topics, default: :false

      t.timestamps
    end
  end
end
