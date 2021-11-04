Rails.application.routes.draw do
  namespace :admin do
    get 'categories/index'
    get 'categories/new'
    get 'categories/show'
    get 'categories/edit'
  end
  get 'roles/create'
  get 'roles/edit'
  get 'roles/list'
  get 'roles/show'
  get 'users/create'
  get 'users/edit'
  get 'users/list'
  get 'users/show'
  get 'status/create'
  get 'status/edit'
  get 'status/list'
  get 'status/show'
  get 'orders/create'
  get 'orders/edit'
  get 'orders/list'
  get 'orders/show'
  get 'order_details/create'
  get 'order_details/edit'
  get 'order_details/list'
  get 'order_details/show'
  get 'carts/create'
  get 'carts/edit'
  get 'carts/list'
  get 'carts/show'
  get 'cart_products/create'
  get 'cart_products/edit'
  get 'cart_products/list'
  get 'cart_products/show'
  get 'products/create'
  get 'products/edit'
  get 'products/list'
  get 'products/show'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/list'
  get 'categories/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
