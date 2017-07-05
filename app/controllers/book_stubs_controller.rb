class BookStubsController < ApplicationController

  def initialize(book)
    @bookstub = BookStub.new(bookstub_params)
  end

private
  def bookstub_params
    params.require(:bookstub).permit(:title, :author_name, :cover)
  end

end
