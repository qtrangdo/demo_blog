class CommentsController < ApplicationController

  def create
    @post = Post.find(param[:post_id])
    @comment = @post.comments.create(params[:comment]).permit(:name, :comment)
    redirect_to post_path(@post)
  end

  def destroy
  end

end
