class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params_item)
    @item.user = current_user
    if @item.save
      redirect_to items_path(@item)
    else
      render :new
    end
  end

  def index
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(params_item)
      redirect_to items_path, notice: 'Votre meuble a été mis à jour'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, status: :see_other
  end

  private

  def params_item
    params.require(:item).permit(:name, :description, :length, :width, :height, :depth, :weight, :price, :photo)
  end

end
