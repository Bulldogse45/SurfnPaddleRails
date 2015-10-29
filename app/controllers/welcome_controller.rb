class WelcomeController < ApplicationController
  def index
    first_post = Post.all.min{|p| p.created_at.to_f}.id
    @post_info = Post.find(first_post)
    @other_posts = Post.all - [@post_info]
  end
  def posts
    @post_info = Post.find(params['id'].to_i)
    @other_posts = Post.all - [@post_info]
  end
end
