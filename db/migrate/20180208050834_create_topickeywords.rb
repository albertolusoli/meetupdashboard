class CreateTopickeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :topickeywords do |t|
    	t.text :keyword
    	t.boolean :status, default: :false
      t.timestamps
    end
  end
end
