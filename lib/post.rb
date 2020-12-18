class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        @author = author
        self.author.posts << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end
end
