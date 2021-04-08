class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to comment.post
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id, user_attributes:[:username, :email])
  end
end