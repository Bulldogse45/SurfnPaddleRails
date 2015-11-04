class Post < ActiveRecord::Base

  belongs_to :author

  def auth_image
    case self.author.name
    when "Aesop"
      image = "aesop.jpg"
    when "Sir Arthur Conan Doyle"
      image = "doyle.jpg"
    when "Stanley Kubrick"
      image = "kubrick.jpg"
    when "David Foster Wallace"
      image = "wallace.jpg"
    when "Mark Twain"
      image = "twain.jpg"
    else
      image = "kitty.jpg"
    end
    image
  end

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
