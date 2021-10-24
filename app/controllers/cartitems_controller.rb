class CartitemsController < ApplicationController
  def new
    @cartitem = Cartitems.new
  end
  
  def create
    product = Product.find_by(name: current_cart)
    @cartitem = Cartitems.new(qty: params[:cartitem][:qty],
                              product_id: product.id)
    @cartitem.save
    redirect_to root_path          
  end
  
  def destroy
    cartitem = Cartitems.find(params[:id])
    cartitem.destroy
    redirect_to root_path
  end
end
