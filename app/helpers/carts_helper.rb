module CartsHelper
	private
		def cart_params
			params.require(:cart).permit(:quantity)
		end
end
