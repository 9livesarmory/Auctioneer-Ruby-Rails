class BidsController < ApplicationController
	
	def create
		@my_product=Product.find(params[:product_id])  #find product
		@user=User.find_by(email: params[:email]) #find_by user by email
		@new_bid=@my_product.bids.new(bids_params)
		@new_bid.user_id=@user.id
		@new_bid.save

		redirect_to products_path
	end

	private

	def bids_params
		params.require(:bid).permit(:amount)
	end

end
