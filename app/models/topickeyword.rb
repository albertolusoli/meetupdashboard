class Topickeyword < ApplicationRecord

	has_many :topics
	has_many :groups, :through => :topics
   def display_name
     keyword
   end

end
