Rails.application.routes.draw do
  get "cart/list" => 'cart#list'

  get "cart/add" => 'cart#add'

  get "cart/delete/:id" => 'cart#delete'

  post "cart/purchase"

  get 'managers/m_login'

  post 'managers/m_login_complete'

  get 'managers/m_logout_complete'

  get 'users/signup'

  post 'users/signup_complete'

  get 'users/login'

  post 'users/login_complete'

  get 'users/logout_complete'

  root 'clothes#list'

  get '/:category' => 'clothes#list_category'

  get 'clothes/show/:id' => 'clothes#show'

  get 'clothes/management'

  get 'clothes/write'#/:manager_id' => 'clothes#write'

  post 'clothes/write_complete'

  get 'clothes/edit/:id' =>'clothes#edit'

  post 'clothes/edit_complete'

  get 'clothes/delete_complete/:id' => 'clothes#delete_complete'

  post 'clothes/write_comment_complete'

  post 'clothes/delete_comment_complete/:id' =>'clothes#delete_comment_complete'

	get 'clothes/:category' => 'clothes#categorize'	
 
  get "clothes/search"

  get 'clothes/management'



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
