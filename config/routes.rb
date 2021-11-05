Rails.application.routes.draw do

  namespace :admin do
    get 'categories',        to: 'categories#index',   as: 'categories'
    get 'categories/new',    to: 'categories#new',     as: 'new_category'
    get 'categories/show',   to: 'categories#show',    as: 'category'
    get 'categories/edit',   to: 'categories#edit',    as: 'edit_category'  
  
    post 'categories',        to: 'categories#create'
    put  'categories/:id',    to: 'categories#update'
    patch 'categories/:id',   to: 'categories#update'
    delete 'categories/:id',  to: 'categories#destroy'
  end
  
end
