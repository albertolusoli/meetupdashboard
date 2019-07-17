class TopicIdLinks < ActiveRecord::Migration[5.1]
  def change
  	change_table :topickeywords do |t|
      t.integer :keyword_group_id
   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end

    change_table :groups do |t|
      t.integer :keyword_group_id

      t.references :topic
      t.integer :topic_key_id, limit: 5
      t.references :batch
#      t.references :keyword
   #   t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :groups_history do |t|
      t.integer :keyword_group_id

      t.references :topic
      t.integer :topic_key_id, limit: 5
      t.references :batch
  #    t.references :keyword
  #    t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :group_members do |t|
      t.integer :keyword_group_id

      t.references :topic
      t.integer :topic_key_id, limit: 5
      t.references :batch
  #    t.references :keyword
#      t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end

    change_table :events do |t|
      t.integer :keyword_group_id

      t.references :topic
      t.integer :topic_key_id, limit: 5
      t.references :batch
    #  t.references :keyword
  #    t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :rsvps do |t|
      t.integer :keyword_group_id

      t.references :topic
      t.integer :topic_key_id, limit: 5
      t.references :batch
  #    t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end
    change_table :topics do |t|
      t.integer :keyword_group_id

  #    t.references :topickeywords
      t.text :topickeyword

   #   t.string :action,     null: false
   #   t.string :name

    #  t.timestamp null: false
    end

  end
end
