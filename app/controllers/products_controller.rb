class ProductsController < ApplicationController

	def index 
		@products = Product.all	
	end

	def show
		@products = Product.find_by(params[:id])
	end

	def create
		p_new = Product.new(name: params[:name], description: params[:description], pricing: params[:pricing])
		flash[:errors] = []
		if p_new.save
			redirect_to '/products'
		else 
			# white mesg all have to be poular
		flash[:errors] = new_p.errors.full_messages
	end
end

	def edit
		@products = Product.find(params[:id])
	end

	def update
		u_product = Product.find(params[:id])
		u_product.name = params[:name]
		u_product.description = params[:description]
		u_product.pricing = params[:pricing]
		if u_product.save
			redirect_to '/products'
		else
			u_product[:errors] = p_new.errors.full_messages
		end
	end

	# CRUD method name must be declared!!!
	def destroy
		p_gone = Product.find(params[:id])
		if p_gone.destroy
			redirect_to '/products'
	end
end 




end
