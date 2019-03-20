class Author

@@total_posts = []

attr_accessor :name, :posts, :author

def initialize(name)
  @name = name
  @posts = []
end

def posts=(posts)
  @posts = posts
  @@total_posts << self
end

def add_post(post)
  post.author = self
  @posts << post
  @@total_posts << post
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  @posts << post
  @@total_posts << post
end

def self.post_count
  @@total_posts.length
end

end
