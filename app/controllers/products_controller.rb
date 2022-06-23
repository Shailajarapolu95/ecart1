class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create
    product = Product.new(products_params)
    product.save
    redirect_to root_path
  end
  private
  def products_params
    params.require(:products).permit(:name, :price, :image_url,:quantity, :category_id, :store_id)
end
end
