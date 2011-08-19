class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def collections
    @title = "Collections"
  end

  def styles
    @title = "Styles"
  end

  def about
    @title = "About"
  end

  def stockists
    @title = "Stockists"
  end

  def contact
    @title = "Contact"
  end

end
