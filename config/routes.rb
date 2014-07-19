Rails.application.routes.draw do

  devise_for :users

  # post 'login/new' => 'user_sessions#new', as: :new_login
  # post 'login' => 'user_sessions#create', as: :login
  # post 'logout' => 'user_sessions#destroy', as: :logout

  # resources :users do
  #   match 'organization' => :organization, via: :get, on: :member # SKETCHY
  #   match 'selfreg' => :selfreg, via: :post, on: :member, as: :self_register
  #   member do
  #     # Get user API credentials for service accounts
  #     get 'api', as: :available_api_of
  #     # Activate user
  #     get 'activate', as: :activate
  #
  #     scope :preferences, controller: :preferences do
  #       get '' => :index
  #       get ':key' => :show
  #       post ':key/:value' => :create
  #     end
  #
  #     scope :password, controller: :password do
  #       post 'update' => :update, as: :update_password
  #       post 'forgot' => :forgot, as: :forgot_password
  #       post 'reset' => :reset, as: :reset_password
  #     end
  #
  #     scope :email, controller: :email do
  #       get 'verify' => :verify, as: :verify_email
  #     end
  #   end
  # end

  match '*path', controller: :application, action: :routing_error, via: :all

  # resources :roles do
  #   resources :permissions, shallow: true do
  #     # match '/see', on: :collection, via: :get
  #   end
  #
  # end

  # resources :roles, shallow: true do
  #   resources :permissions
  # end

  # resources :service_connections do
  #   resources :tenants, only: [:index, :create, :destroy]
  # end

  # resources :tenants do
  #   resources :users, except: [:index, :create, :new, :edit]
  #   resources :tenant_policies, except: [:index, :new, :edit]
  # end

  # resources :service_connections
  # resources :tenant_policies
  # resources :service_accounts
  # resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
