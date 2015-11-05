class Post < ActiveRecord::Base

  belongs_to :author

  validates :title, :body, :author, :presence => true
  validates :title, length: {minimum: 10, too_short: "Your post title must be at least #{count} characters long"}

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
