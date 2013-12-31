class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :username, :favourite_location, :about_me, :email, :password, :password_confirmation, :admin, :remember_me, :confirmed_at, :avatar

  # attr_accessible :title, :body

  ### CARRIERWAVE
  mount_uploader :avatar, AvatarUploader

  ### VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true


  ### ASSOCIATIONS
  has_many :photos
  has_many :favourites
  # has_one :location, through: :photo
  # has_many :memories, through: :photo
end
