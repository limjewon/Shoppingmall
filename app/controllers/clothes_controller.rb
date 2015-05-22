class ClothesController < ApplicationController
  def list
	@products = Product.all
  end

  def list_category
	case params[:category]
	when "Man"
		@category = "Man"
		
	when "Woman"
		@category = "Woman"
		
	else "Accessory"
		@category = "Accessory"
		
	end
	@products = Product.where(category:@category)
  end

  def show
	@product = Product.find(params[:id])
  end

  def management
	@products = Product.all
  end

  def write
  end

  def write_complete
	product = Product.new
	product.category = params[:product_category]
	product.image_url = params[:product_image_url]
	product.title = params[:product_title]
	product.content = params[:product_content]
	if product.save
		flash[:alert] = "it is saved"
		redirect_to "/clothes/show/#{product.id}"
	else
		flach[:alert] = product.error.flatten.join(' ')
		redirect_to :back
	end
  end

  def edit
	@product = Product.find(params[:id])
  end

  def edit_complete
	p = Product.find(params[:id])
	p.category = params[:product_category]
	p.image_url = params[:product_image_url]
	p.title = params[:product_title]
	p.content = params[:product_content]
	if p.save
		flash[:alert] = "it is edited"
		redirect_to "/clothes/show/#{p.id}"
	else
		flach[:alert] = product.error.flatten.join(' ')
		redirect_to :back
	end
  end

  def delete_complete
  end
end
