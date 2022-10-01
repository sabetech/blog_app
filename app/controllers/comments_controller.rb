class CommentsController < ApplicationController
  def create
    @comment = @current_user.comments.new(comment_params)
    @comment.save if @comment.valid?
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # flash[:notice] = ['Comment Deleted Successfully']
    redirect_to user_post_path(current_user, params[:post_id]), notice: 'Successfully removed the comment.'
    # respond_to do |format|
    #   format.html { redirect_to "/users/#{current_user.id}/posts/#{@post.id}" }
    #   format.json { head :no_content }
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
