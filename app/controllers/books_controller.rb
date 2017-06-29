class BooksController < ApplicationController
    def index
      @books = Book.all
    end

    def show
      @book = Book.find(params[:id])
    end

    def new
    end

    def create
      @book = Book.new(book_params)

      @book.save
      redirect_to @book
    end

  private
    def book_params
      params.require(:book).permit(:title, :author_name, :subtitle, :published, :publisher, :rating, :pages, :description, :image, :review, :amazon_link, :date_added)
    end
end

# , :subtitle, :published, :publisher, :rating, :pages, :description, :image, :review, :amazon_link, :date_added
# bin/rails generate model Book title:string subtitle:string published:date rating:float pages:int description:text publisher:string image:string review:text amazon_link:string date_added:timestamp
# render plain: params[:article].inspect
