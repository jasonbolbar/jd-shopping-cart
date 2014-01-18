class CategoriesController < ApplicationController

  #GET /products_list
  def product_list
    @categories = Category.includes(:products).all
  end
end
