class CommentsController < ApplicationController
  def create
    @comment = @current_user.comments.new(comment_params)
    @comment.save if @comment.valid?
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
