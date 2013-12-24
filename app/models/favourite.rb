class Favourite < ActiveRecord::Base
  attr_accessible :user_id, :photo_id

  belongs_to :user
end
