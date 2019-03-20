class Author

@@total_posts = []

attr_accessor :name, :posts

def initialize(name)
  @name = name
end

def add_post(post)
  post.author = self
  @posts << post
  @@total_posts << post
end

def add_post_by_title(posttitle)
  post = Post.new
  post.name = posttitle
  post.author = self
  @@total_posts << post
end

def self.post_count
  @@total_posts.length
end

end
