class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end
  
    def index
  # 	@categories = Category.all
  	@items = Item.available_items
  end
end
