class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      flash[:success] = "Your post has been saved."
      redirect_to @post
    else
      flash[:alert] = "There was a problem saving your post. Please try again."
      render :new
    end
  end

  def update
  end

  def destroy
  end


  private

  def post_params
    params.require(:post).permit(:title, :body, :image)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
