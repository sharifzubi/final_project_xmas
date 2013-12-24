class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :created_at

  geocoded_by :address
  after_validation :geocode

  belongs_to :photo
end
