class CartsController < ApplicationController

  def add_to_cart
    if params[:products]
      products = Product.find(params[:products].uniq { |i| i.to_i })
      @cart = Cart.new
      products.each do |p|
        @cart.cart_products.build(product_id: p.id)
      end
      @cart.total_discount = products.map { |p| p.discount.to_f }.inject { |disc, p| disc + p }
      @cart.sale_taxes = products.map { |p| p.price*(p.tax.to_f/100) }.inject { |disc, p| disc + p }
      @cart.total = products.map { |p| p.price.to_f }.inject { |disc, p| disc + p } + @cart.sale_taxes - @cart.total_discount
    end
  end

  def checkout

  end

end
