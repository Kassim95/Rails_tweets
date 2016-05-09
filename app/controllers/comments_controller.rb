class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def show
  	@comments = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    @comment.save
    redirect_to posts_path
  end

  def destroy
  end
end

private 

def comment_params
  params.require(:comment).permit(:post_id, :body, :user_id)
end
