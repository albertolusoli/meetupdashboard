class Group < ApplicationRecord
	has_many :group_members
	belongs_to :location
	belongs_to :topic, :foreign_key => 'topic_id', :class_name  => 'Topic', :primary_key => 'topic_id', optional: true
	has_many :events
	has_one :topickey, :through => :topic
   def topickeyword
   # 	topic.description
    name
   end
end
