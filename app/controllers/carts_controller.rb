class CartsController < ApplicationController

  def show
    if params[:id]!='checkout'
      @cart = Cart.find(params[:id])
    else
      redirect_to root_path
    end
  end

  def update_cart
    if params[:products]
      @cart = Cart.new(product_ids:(params[:products].uniq { |i| i.to_i }))
    end
  end

  def checkout
    @cart = Cart.new(params[:cart])
    @cart.build_customer()
    render 'customer_information'
  end

  def complete
    @cart = Cart.new(params[:cart])
    if @cart.save
      redirect_to @cart
    else
      render 'checkout'
    end
  end


end
