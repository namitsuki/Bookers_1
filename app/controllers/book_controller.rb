class BookController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if@book.save
      flash[:notice] = "投稿に成功しました。successfully create!!"
      redirect_to book_path: 'successfully create!!'
    else
      render :new
  end
end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])  
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "更新に成功しました。successfully update!!"
    redirect_to book_path: 'successfully update!!'
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/book'
  end  
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end