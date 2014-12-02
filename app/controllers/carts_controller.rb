class CartsController < ApplicationController
	include CartsHelper

	def create

		cart = Cart.new(cart_params)
		@quantity = cart.quantity

		if Cart.where("product_id is ?", params[:product_id] ).first == nil

			cart = Cart.new(cart_params)
			cart.product_id = params[:product_id]
			cart.save

		else
			cart = Cart.where("product_id is ?", params[:product_id] ).first
			cart.quantity = cart.quantity.to_i + @quantity.to_i
			cart.save
		end

		redirect_to products_path

	end

	def show
		redirect_to products_path
	end

	def destroy
		Cart.destroy_all
		redirect_to products_path

	end

end
