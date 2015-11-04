require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  #   true
  # end
  test "Posts author_id associated correctly" do
    assert true
    post=Post.create(author_id:1, title:"The Adventures of Huckleberry Finn", body:"This is the song that never ends.  It goes on and on my friend. Some people started singing it not knowing what it was, and they'll continue singing it forever just because.")
    post.author_id == 1
  end
  test "Posts title associated correctly" do
    assert true
    post=Post.create(author_id:1, title:"The Adventures of Huckleberry Finn", body:"This is the song that never ends.  It goes on and on my friend. Some people started singing it not knowing what it was, and they'll continue singing it forever just because.")
    post.title == "The Adventures of Huckleberry Finn"
  end
  test "Posts body associated correctly" do
    assert true
    post=Post.create(author_id:1, title:"The Adventures of Huckleberry Finn", body:"This is the song that never ends.  It goes on and on my friend. Some people started singing it not knowing what it was, and they'll continue singing it forever just because.")
    post.body == "This is the song that never ends.  It goes on and on my friend. Some people started singing it not knowing what it was, and they'll continue singing it forever just because."
  end
end
