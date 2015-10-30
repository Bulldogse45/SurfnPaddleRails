class WelcomeController < ApplicationController
  def index
    first_post = Post.all.min{|p| p.created_at.to_f}.id
    @post_info = Post.find(first_post)
    @other_posts = Post.all - [@post_info]
    find_image
    render "posts"
  end
  def posts
    @post_info = Post.find(params['id'].to_i)
    @other_posts = Post.all - [@post_info]
    find_image
  end
  def find_image
    case @post_info.id
    when 1
      @image = "two-travelers.jpg"
    when 2
      @image = "plymoth.jpg"
    when 3
      @image = "lady.jpg"
    when 4
      @image = "lobster.jpg"
    when 5
      @image = "strangelove.jpg"
    else
      @image = "kitty.jpg"
    end
    @image
  end
end
