class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def edit
    @product=Product.find(params[:id])
  end
  def create
    product = Product.new(products_params)
    product.save
    redirect_to root_path
  end
  def update
    product = Product.find(params[:id])
  product.update(products_params)
  redirect_to root_path
  end
  def show
    @product = Product.find(params[:id])
  end
    def destroy
      product =Product.find(params[:id])
      product.destroy
      flash[:note] = "delete record succesfully"
      redirect_to  root_path
    end
  private
  def products_params
    params.require(:products).permit(:name, :price, :image_url,:quantity, :category_id, :store_id)
end
end


