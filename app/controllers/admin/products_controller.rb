class Admin::ProductsController < ApplicationController
  layout 'admin_layout'

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
      @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
  end

  def edit
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  def update
    if @product.update(params_product)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      flash[:destroy] = "product #{@product.name} deleted"
    else
      flash[:destroy] = "could not be deleted"
    end
    redirect_to admin_products_path
  end

  private
  def params_product
    params.require(:product).permit(:name, :price, :description, :category_id)
  end

  def set_product
    @product = Product.find(params[:id])
  rescue
    flash[:set_product_error] ="could not find the record #{params[:id]}"
    redirect_to admin_products_path
  end
end
