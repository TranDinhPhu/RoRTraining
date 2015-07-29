class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new post_params
    
    if @post.save
      redirect_to posts_path
    else
      redirect_to new_post_path
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    Post.destroy(params[:id])
    redirect_to posts_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name, :title, :tag)
  end
end
