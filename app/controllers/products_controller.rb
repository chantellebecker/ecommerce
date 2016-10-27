class ProductsController < ApplicationController
before_action :authenticate_user!
before_action :check_for_admin

  def new
  	@product = Product.new
  end

  def index
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.create(product_params)
  	if @product.save
  		redirect_to @product
  	else
  		render :new
  	end
  end

  def update
  	@product = Product.find(params[:id])
  	@product.update(product_params)
  		if @product.save
  			redirect_to @product
  		else
  			render :edit
  		end
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to products_path
  end

  private

  def product_params
  	params.require(:product).permit(:name, :quantity, :price, :description, :promoted, :email)
  end
end
