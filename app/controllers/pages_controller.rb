class PagesController < ApplicationController
 include PagesHelper
 
 before_action :set_cart_from_cookies

  def home
  
    @products = Product.includes(:category).shuffle
end

def cart
  
end

end