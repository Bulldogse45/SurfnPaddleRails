class Post < ActiveRecord::Base

  belongs_to :author


  def post_image
    case self.id
    when 1
      image = "two-travelers.jpg"
    when 2
      image = "plymoth.jpg"
    when 3
      image = "lady.jpg"
    when 4
      image = "lobster.jpg"
    when 5
      image = "strangelove.jpg"
    else
      image = "kitty.jpg"
    end
    image
  end
end
