class ShowController < ApplicationController

  def about
    @other_posts = Post.all
  end

end
