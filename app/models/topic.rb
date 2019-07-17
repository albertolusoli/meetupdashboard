class Topic < ApplicationRecord
#
	belongs_to :topickey, :foreign_key => 'topickeyword', :class_name  => 'Topickeyword', :primary_key => 'keyword', optional: true
	has_many :events, through: :groups
#	has_one :topickeyword, :foreign_key => 'topickeyword', :class_name  => 'Topickeyword', :primary_key => 'keyword'
	has_many :group_members, through: :groups

	has_many :groups


end
