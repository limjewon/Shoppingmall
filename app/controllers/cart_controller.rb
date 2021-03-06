class CartController < ApplicationController
	before_action :login_check
  def list
		@list = Cart.all
		@total_price = 0
  end

  def add
		@p = Product.find(params[:product_id])		
		@add_cart = Cart.new
		@add_cart.user_id = session[:user_id]
		@add_cart.price = @p.price
		@add_cart.category = @p.category
		@add_cart.title = @p.title
		@add_cart.image_url = @p.image_url
		@add_cart.content = @p.content
		@add_cart.quantity = params[:quantity]
		@add_cart.save
		redirect_to "/cart/list"
  end

  def delete
		list_delete = Cart.find(params[:id])
		list_delete.destroy
		redirect_to"/cart/list"
  end

  def purchase
		@total_price = params[:total_price]
		list = Cart.all
		list.each do |component|
			if component.user_id == session[:user_id]
				component.destroy
			end
		end
  end
end
