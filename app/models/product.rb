class Product < ActiveRecord::Base
	has_one :cart
end
