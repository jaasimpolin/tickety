Tickety::Application.routes.draw do

  get "password_resets/create"

  get "password_resets/edit"

  get "password_resets/update"

resources :password_resets

  resources :rewards do
get :redeem, :on => :collection
post :redeem, :on => :collection
end

  match 'home' => "pages#index"
  match 'newreleases' => "pages#newreleases"
  match 'currentlyshowing' => "pages#currentlyshowing"
  match 'rewardsystem' => "pages#customer_reward"
  match 'signin' => "pages#signin"
  match 'policies' => "pages#policies"
  match 'creators' => "pages#creators"
  match 'webinfo' => "pages#webinfo"
  match 'admindashboard' => "pages#admindashboard"
  
  root :to => "pages#index"

resources :movies do
get :auto_complete_for_movie_title , :on => :collection
end

 resources :bookings do
get :getCinema , :on => :collection
get :prebooking , :on => :collection
    end


  resources :movies
  
  resources :searches

  resources :payments

  resources :theaters

  resources :seats

  resources :cinemas

  resources :shows do
get :updateshows, :on => :collection
end

  resources :bookings

resources :user_sessions
resources :users
  
match 'login' => 'user_sessions#new', :as => :login
match 'logout' => 'user_sessions#destroy', :as => :logout

match 'signup',  to: 'user#new'


  #get "user_sessions/new"

  #get "user_sessions/create"

 # get "user_sessions/destroy"

  resources :users






#resources :shows do
  #get :autocomplete_movie_id, :on => :collection
#end

#resources :movies  do
#get :auto_complete_for_movie_title , :on => :collection 
#end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

