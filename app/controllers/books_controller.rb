class BooksController < ApplicationController


  def create

    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path



  end

  def index
    @book = Book.new
    @books = Book.all


  end

  def show
  end

  def destroy
  end

   private

  def post_image_params
    params.require(:book).permit(:title, :body,:image)
  end

end
