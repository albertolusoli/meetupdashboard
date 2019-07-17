class Topickeywordname < ActiveRecord::Migration[5.1]
  def change
  	
  	change_table :topickeywords do |t|
   #   t.string :action,     null: false
   #   t.string :name
	  t.integer :cities, array: true, default: [], limit: 5
    #  t.timestamp null: false
    end

    change_table :groups do |t|
   	  t.references :location


   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :groups_history do |t|
        	  t.references :location

    end
    change_table :group_members do |t|
    	  t.references :location

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end

    change_table :events do |t|
    	  t.references :location


   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :rsvps do |t|
    	  t.references :location


   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :topics do |t|

    end
  end
end
