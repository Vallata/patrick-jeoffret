class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @items = Item.last(3)
  end

  def about
  end

  def contact
  end

  def shop
  end

  def thanks
  end
end
