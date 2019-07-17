class Location < ApplicationRecord

  def full_address
    "#{city}, #{state}, #{country}"
  end
  # def state
  #   "#{state}"
  # end  
  # def country
  #   "#{country}"
  # end
  has_many :groups
  has_many :events
  has_many :group_members
  has_many :rsvps

  geocoded_by :full_address
  reverse_geocoded_by :lat, :lon

  def latitude
  	self.lat
  end

  after_validation -> {
    # before_save -> {

    geocode
  }, if: ->(obj) { obj.full_address.present? && (obj.full_address != obj.city) }
  
  def display_name
     city
   end

end
