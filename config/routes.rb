Project3Ii::Application.routes.draw do

  devise_for :users
  # :controllers => { :registrations => 'users/registrations' }
  # careful! call devise_for once only and do it before resource users!

  root to: "home#index"

  resources :users #, except: [:index ]

  #nested routes
  # , except: [:index, :edit, :update]
  resources :photos, except: [:index] do
    resources :memories
  end

  # get   'dashboard',        :to => "users#dashboard"
  # get   'journey',          :to => "users#journey"

end
