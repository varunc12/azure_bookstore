class BooksController < ApplicationController
    def new
    end

    def create
      # render plain: params[:article].inspect
    end
end

# bin/rails generate model Book title:string subtitle:string published:date rating:float pages:int description:text publisher:string image:string review:text amazon_link:string date_added:timestamp
