module ProductsHelper
	private
		def product_params
			params.require(:product).permit(:description, :price)
		end
end
