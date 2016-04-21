class ProductsController < ApplicationController
	def index
		@products=Product.all
		render "index"
	end

	def show
		
	end

	def new
		@new_product=Product.new
		render "new"
	end

	def create
		@new_product=Product.new(:title => params[:product][:title], :description => params[:product][:description], :deadline => params[:product][:deadline])
		@new_product.save

		redirect_to('/products')
	end

	def destroy
		
	end
end

		