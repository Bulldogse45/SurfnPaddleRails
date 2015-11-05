class WelcomeController < ApplicationController

  def index
    first_post = Post.all.max{|p| p.created_at.to_f}.id
    @post = Post.find(first_post)
    @other_posts = Post.all - [@post]
    render "show"
  end
  def show
    @post = Post.find(params['id'].to_i)
    @other_posts = Post.all - [@post]
  end
  def new
    @other_posts = Post.all
    @post = Post.new
  end
  def create

    @post = Post.new(post_params)
    @post.update_attribute(:author_id,6)
    if @post.save
      @other_posts = Post.all
      redirect_to root_path
    else
      @other_posts = Post.all
      render "new"
    end
  end
  def update
    @post = Post.find(params['id'])
    if @post.update(post_params)
      redirect_to @post
    else
      @other_posts = Post.all
      render "new"
    end
  end
  def edit
    @post = Post.find(params['id'])
    @other_posts = Post.all - [@post]
    render "new"
  end

  def destroy
    @post = Post.find(params['id'])
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title,:body)
  end
end
