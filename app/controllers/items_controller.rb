class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved successfully"
      render :back
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
