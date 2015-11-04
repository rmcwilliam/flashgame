Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  post "/signup", to: "registrations#create"
  delete "/signup", to: "registrations#delete"

  post "/login", to: "registrations#login"

  post "/decks", to: "decks#create"
  get "/decks", to: "decks#index"
  get "/decks/:id", to: "decks#show"
  delete "/decks/:id", to: "decks#destroy"
  put "decks/:id", to: "decks#edit"

  post "/decks/:id/cards", to: "cards#create"
  get "/decks/:id/cards", to: "cards#index"
  delete "/decks/id:/cards", to: "cards#destroy"
  put "/decks/:id/cards", to: "cards#edit"

  post "/guesses", to: "guesses#create"    # send up card ID (docs)

 

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