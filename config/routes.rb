Rails.application.routes.draw do
  get 'tags/new'

  get 'tags/create'

  get 'tags/destroy'

  get 'cards/new'

  get 'cards/create'

  get 'cards/index'

  get 'cards/show'

  get 'games/new'

  get 'games/create'

  get 'games/show'

  get 'games/update_card_position'

  get 'home/home'

  get 'users/new'

  get 'users/create'

  get 'users/delete'

  get 'users/destroy'

  get 'users/edit'

  get 'users/update'

  get 'users/show'

  get 'users/test'

  get 'home/home'

  get 'home/show'

  # get '/' => 'home#index'

  root 'home#home'

  post "/users/create" => "users#create", :as => "create"

  post "/games/update_card_position" => "games#update_card_position", :as => "update_card_position"
  post "/games/play_again" => "games#play_again", :as => "play_again"

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users, :games, :cards

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
