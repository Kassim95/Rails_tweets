class PostsController < ApplicationController
  def index
  	@posts = Post.all
 		@user = User.all
    @post = Post.new

  end

  def show

  end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy  
    redirect_to posts_path
    
  end
end

private 

def post_params
  params.require(:post).permit(:body, :user_id)
end
