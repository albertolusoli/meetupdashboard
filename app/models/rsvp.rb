class Rsvp < ApplicationRecord
	belongs_to :event, :foreign_key => 'event_id', :class_name  => 'Event', :primary_key => 'event_id'
	belongs_to :group, :foreign_key => 'group_urlname', :class_name  => 'Group', :primary_key => 'urlname'
	# has_one :group_member, :foreign_key => 'member_id', :class_name  => 'Group_member', :primary_key => 'member_id'
	belongs_to :location


end
