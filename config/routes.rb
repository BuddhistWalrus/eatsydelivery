Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :order, :only => [:create, :new, :index]
  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'welcome/complete' => 'welcome#complete'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get 'order' => 'order#index'
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


  #Fix JS routes and SVG
  get '/images/burrito_banner.jpg', :to => redirect('/assets/burrito_banner-1ceceebf9debb57c689c91b17df04fa84b51da280c758ba5b1dab64e83b5f4fe.jpg')

  get '/assets/images/bars.svg', :to => redirect('/assets/bars-0352242748c066b3fd7959353a2af63b7753b86795376a066a19e8d20df778a2.svg')
  get '/assets/images/close.svg', :to => redirect('/assets/close-322c343d196e21d130e7fdc8b67d72552eab91f1be48c7cdd3ecdeffca713ea4.svg')
  get '/assets/images/arrow.svg', :to => redirect('/assets/arrow-a79f7ef365a73e45a957d161ca47a4a3a1cc4d09c70882b34d8cfc1530fa0bf4.svg')

#Fix fonts
  get '/fonts/fontawesome-webfont.woff?v=4.3.0', :to => redirect('/assets/fontawesome-webfont.woff')
  get '/fonts/fontawesome-webfont.ttf?v=4.3.0', :to => redirect('/assets/fontawesome-webfont.ttf')
  get '/fonts/fontawesome-webfont.eot?v=4.3.0', :to => redirect('/assets/fontawesome-webfont.eot')
  get '/fonts/fontawesome-webfont.svg?v=4.3.0', :to => redirect('/assets/fontawesome-webfont.svg')
  get '/fonts/fontawesome-webfont.woff2?v=4.3.0', :to => redirect('/assets/fontawesome-webfont.woff2')
    
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
