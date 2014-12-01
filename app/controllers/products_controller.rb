class ProductsController < ApplicationController
	include ProductsHelper

	def index
		@products = Product.all
		@product = Product.new
	end


	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to products_path
	end

end
