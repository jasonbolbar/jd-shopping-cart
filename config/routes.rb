JdShoppingCart::Application.routes.draw do
  get '/products/:id' => 'products#show', as: :product
  post '/carts/checkout' => 'carts#checkout', as: :check_out_cart
  post '/carts/update_cart' => 'carts#update_cart', as: :update_cart
  post '/carts/complete' => 'carts#complete', as: :complete
  resources :carts, only: :show
  root :to => 'categories#product_list'
end
