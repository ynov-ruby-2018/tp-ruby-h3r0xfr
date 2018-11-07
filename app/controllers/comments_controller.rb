class CommentsController < ApplicationController

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    if Comment.new(post_params).save
      redirect_to root_path
    end
  end

  def post_params
    params.require(:comment).permit(:title, :content)
        .merge(user_id: current_user.id)
  end

  def like
    @comment = Comment.find(params[:id])
    if @comment
      @comment.increment!(:likes)
      redirect_to root_path
    end
  end

  def dislike
    @comment = Comment.find(params[:id])
    if @comment
      @comment.increment!(:dislikes)
      redirect_to root_path
    end
  end

end