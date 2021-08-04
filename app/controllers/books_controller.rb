class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    books = Book.new(book_params)
    books.save
    redirect_to 'books/show'
  end
  
  def edit
  end
  
  def show
    @books = Book.find(params[:id])
  end
  
  private
  #ストロングパラメータ
  def list_params
    params.require(:book).permit(:title, :body)  
  end
end
