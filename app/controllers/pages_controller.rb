class PagesController < ApplicationController
  def home
   #1 preguntar si esxiste la cookie cart_id
    #si existe buscar la cookie cart_id 
    #definir variable @cart
    #si no existe se crea una nueva y se asigna

   if cookies[:cart_id]
    @cart = Cart.find(cookies[:cart_id])
   else
    @cart = Cart.create(total: 0)
    cookies[:cart_id] = @cart.id
  end
end
end