Project3Ii::Application.routes.draw do

  devise_for :users
  # :controllers => { :registrations => 'users/registrations' }
  # careful! call devise_for once only and do it before resource users!

  root to: "home#index"


end
