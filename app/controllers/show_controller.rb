class ShowController < ApplicationController

  def about
    @other_posts = Posts.all
  end

end
