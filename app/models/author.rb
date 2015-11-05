class Author < ActiveRecord::Base

  has_many :posts

  def auth_image
    case self.name
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
end
