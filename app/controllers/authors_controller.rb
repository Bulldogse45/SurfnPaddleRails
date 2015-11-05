class AuthorsController < ApplicationController

  def index
    @other_posts = Post.all
  end
  def show
    @other_posts = Post.all
    @author = Author.find(params['id'])
  end
  def new
    @other_posts = Post.all
    @author = Author.new
  end
  def create
    @other_posts = Post.all
    if @author = Author.create(post_params)
      redirect_to @author
    else
      render "new"
    end
  end
  def update
    @other_posts = Post.all
    @author = Author.find(params['id'])
    if @author.update(post_params)
      redirect_to @author
    else
      render "new"
    end
  end
  def edit
    @author = Author.find(params['id'])
    @other_posts = Post.all - [@post]
    render "new"
  end
  def destroy
    @other_posts = Post.all
  end
  private

  def post_params
    params.require(:author).permit(:name,:bio)
  end
end
