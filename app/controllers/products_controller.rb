class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.create(name: params[:name], description: params[:description])
    redirect_to products_path
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end
end
