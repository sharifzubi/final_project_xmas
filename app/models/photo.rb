class Photo < ActiveRecord::Base
  attr_accessible :title, :image, :remote_image_url, :user_id, :created_at, :memories_attributes, :location_attributes

  # acts_as_voteable
  # acts_as_taggable

  ### ASSOCIATIONS
  belongs_to :user
  has_many :memories
  has_one :location

  ### NESTED MODEL FORMS
  accepts_nested_attributes_for :memories
  accepts_nested_attributes_for :location

  # accepts_nested_attributes_for :location

  ### CARRIERWAVE
#   mount_uploader :image, ImageUploader


#   def as_json(options = {})
#     super options.merge(:methods => [:location, :title, :image], :only => [:id, :latitude, :longitude])
#   end
end
