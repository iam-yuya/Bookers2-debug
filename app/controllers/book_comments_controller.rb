class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    # ↑ comment = BookComment.new(book_comment_params)
    # comment.user_id = current_user.id の省略記法
    comment.book_id = book.id
    comment.save
    redirect_to book_path(book)
  end

  def destroy
    BookComment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
