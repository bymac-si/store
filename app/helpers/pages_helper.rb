module PagesHelper
def cookies_handler
    
end

def print_icon
  puts "🖨".center(50,"-")
  
end

def set_cart_from_cookies

    if cookies[:cart_id]
      @cart = Cart.find(cookies[:cart_id])
     else
      @cart = Cart.create(total: 0)
      cookies[:cart_id] = @cart.id
    end
   
  
end



end
