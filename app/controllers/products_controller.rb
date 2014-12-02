class ProductsController < ApplicationController
	include ProductsHelper

	def index
		@products = Product.all
		@product = Product.new
		@cart = Cart.new
		@carts = Cart.all
		@array_subtotal = []
		if Cart.first != nil
			@firstcart = Cart.first 	#this is needed just for the "Clear Shopping Cart" button
		else
			@cart_empty = true
		end
	end


	def create
		@product = Product.new(product_params)
		@product.save
		redirect_to products_path
	end




end
