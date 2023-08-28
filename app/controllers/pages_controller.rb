class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :contact, :thanks ]

  def home
    @items = Item.last(3)
  end

  def about
  end

  def contact
  end

  def thanks
  end

  def test
  end
end
