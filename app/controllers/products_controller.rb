class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format. html #show.html.haml
      format.js
    end
  end
end
