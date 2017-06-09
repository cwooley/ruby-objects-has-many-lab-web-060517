class Author
  attr_accessor :name
  attr_reader :posts

  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def self.all
    @@all
  end

  def self.post_count
    self.all.each do |post|
      @@post_count += post.posts.size
    end
    @@post_count
  end
end
