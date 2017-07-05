class BooksController < ApplicationController
    def index
      @books = Book.all
    end

    def show
      @book = Book.find(params[:id])
    end

    def new
      @book = Book.new
    end

    def edit
      @book = Book.find(params[:id])
    end

    def create
      @book = Book.new(book_params)

      if @book.save
        redirect_to @book
      else
        render 'new'
      end
    end

    def update
      @book = Book.find(params[:id])

      if @book.update(book_params)
        redirect_to @book
      else
        render 'edit'
      end
    end

    def destroy
      @book = Book.find(params[:id])
      @book.destroy

      redirect_to books_path
    end

  private
    def book_params
      params.require(:book).permit(:title, :author_name, :subtitle, :published, :publisher, :rating, :pages, :description, :cover, :review, :amazon_link, :date_added)
    end
end

# , :subtitle, :published, :publisher, :rating, :pages, :description, :cover, :review, :amazon_link, :date_added
# bin/rails generate model Book title:string subtitle:string published:date rating:float pages:int description:text publisher:string cover:string review:text amazon_link:string date_added:timestamp
# render plain: params[:article].inspect
# <!-- <%= link_to 'Books', controller: 'books' %> -->
