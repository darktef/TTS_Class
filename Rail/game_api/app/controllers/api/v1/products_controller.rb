class Api::V1::ProductsController < ApplicationController
	def index
	    @api_v1_products = Product.all
	end

	def show
		@api_v1_product = Product.find(params[:id])
	end
end
