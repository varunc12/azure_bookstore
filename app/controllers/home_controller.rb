class HomeController < ApplicationController

  def index
     @books = Book.all
  end

  protected

  def cell_head
    "head_foot/cell_header"
  end

  def desktop_head
    "head_foot/desktop_header"
  end

  def footer
    "head_foot/footer"
  end

end
