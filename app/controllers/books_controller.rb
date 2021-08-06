class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      
      flash[:errors_msgs] = @book.errors.full_messages
      redirect_to books_path
   
    end
  end


  def edit
    @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def update
     book =  Book.find(params[:id])
    if book.update(book_params)
       redirect_to book_path(book)
    else
      redirect_to edit_book_path(book)
      flash[:errors_msgs] = book.errors.full_messages
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end




  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end