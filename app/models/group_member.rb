class GroupMember < ApplicationRecord

	belongs_to :group, :foreign_key => 'group_id', :class_name  => 'Group', :primary_key => 'group_id'
	has_many :rsvp
	has_one :topic, :through => :group
	belongs_to :location

end
