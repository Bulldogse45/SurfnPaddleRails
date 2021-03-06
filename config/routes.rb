Rails.application.routes.draw do


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   resources :authors
   
   root 'welcome#index'

   get '/posts' => 'welcome#index'

   get '/posts/new' => 'welcome#new', :as => :new_post

   post '/posts' => 'welcome#create', :as => :create_post

   get '/posts/:id' => 'welcome#show', :as => :post

   get '/posts/:id/edit' => 'welcome#edit', :as => :edit_post

   patch '/posts/:id' => 'welcome#update'

   delete '/posts/:id'=> 'welcome#destroy', :as => :delete_post

   get '/search/find' => 'search#find', :as => :find

   get '/search' => 'search#search', :as => :search

      get '/about' => 'show#about', :as => :about

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
