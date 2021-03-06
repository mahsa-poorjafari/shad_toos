PrepareProject::Application.routes.draw do  

  

  resources :amount_remains

  resources :roles

  resources :harams

  resources :send_links
  devise_for :users
  resources :users do 
    collection do 
      post "create_colleague" => "users#create"
    end
  end
  

scope "(:locale)", :locale => /en|fa|ar/ do  resources :resellers
 
  resources :sliders
  resources :activities
  resources :messages  
  resources :pictures
  get 'test' => 'static#test'
  resources :products do
    member do
      get :download
    end
  end
  resources :pages
  resources :categories
  # config/routes.rb (Rails 2.0)
  resources :feeds, :only => [:index]

end
  root :to => 'static#home'
  
  get "login" => "users#login"  
  post "create_session" => "users#create_session", :as => :create_session
  get "delete_session" => "users#delete_session", :as => :delete_session
  
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
