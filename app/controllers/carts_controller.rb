class CartsController < ApplicationController
  def show
    @Item = Cartitem.find(cart_id: params[:id])
  end
end
