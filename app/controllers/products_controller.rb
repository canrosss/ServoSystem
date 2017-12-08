class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @product = Product.all
  end

  def new
   #Creamos la variable de instancia
   @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "El producto fue borrado exitosamente."
    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "El producto fue actualizado"
      redirect_to product_path(@product)
    else
      render 'edit'
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "El producto fue añadido con éxito"
      redirect_to product_path(@product)
    else
      render 'new'
    end
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :image_1, :image_2, :image_3, :image_4, :body)
    end
end
