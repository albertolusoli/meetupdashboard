class Event < ApplicationRecord
	belongs_to :group, :foreign_key => 'group_id', :class_name  => 'Group', :primary_key => 'group_id'
	#belongs_to :topic, optional: true
	belongs_to :location

	has_one :topic, :through => :group

end
