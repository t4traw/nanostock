class HomeController < ApplicationController

  def index
    @items = Item.limit(50)
    set_title('Home')
  end

  # Ajax
  def show
    @items = Item.where("sku LIKE :sku OR sku_alias LIKE :sku", sku: "%#{params[:sku]}%").limit(50)
    render :json => @items
  end
end
