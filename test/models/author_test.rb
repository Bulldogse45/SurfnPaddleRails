require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "Author name associated correctly" do
    assert true
    author = Author.new(name:"Matthew Fair", bio:"Was born in Brownsburg")
    author.name == "Matthew Fair"
  end
  test "author bio associated correctly" do
    assert true
    author = Author.new(name:"Matthew Fair", bio:"Was born in Brownsburg")
    author.body == "Was born in Brownsburg"
  end
end
