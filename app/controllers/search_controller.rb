class SearchController < ApplicationController

  def find
    @results = []
    @terms = params[:q].split
    @terms.each do |t|
      Post.all.each do |p|
        post_downcase = []
        p.body.split.each do |w|
          post_downcase << w.downcase
        end
        title_downcase = []
        p.title.split.each do |w|
          title_downcase << w.downcase
        end
        if post_downcase.include?(t.downcase) || title_downcase.include?(t.downcase)
          @results << p
        else
        end
      end
    end
    @results.uniq!
  end

  def search

  end
end
