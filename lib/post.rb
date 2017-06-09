class Post
  attr_accessor :title
  attr_reader :author

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end
end
