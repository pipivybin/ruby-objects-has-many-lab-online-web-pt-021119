class Author

attr_accessor :name, :posts

def initialize(name)
  @name = name
end

def add_post(post)
  post.author = self
  @posts << post
end

def add_post_by_title(posttitle)
  post = Post.new
  post.name = posttitle
  post.author = self
end

end
