class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  private
   def current_cart
    if session[:cart_id]
     cart = Cart.find(session[:cart_id])
    else
     cart = Cart.create
     session[:cart_id] = cart.id
    end
    cart
   end
   helper_method :current_cart

end
