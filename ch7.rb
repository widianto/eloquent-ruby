class Document
  attr_accessor :title, :author, :content
  
  def initialize title, author, content
    @title = title
    @author = author
    @content = content
  end
  
  def words
    @content.split
  end
  
  def word_count
    words.size
  end
  
  def title=( new_title )
    unless @read_only
      @title = new_title
    end
  end
  
  def author=( new_author )
    unless @read_only
      @author = new_author
    end
  end
  
  def content=( new_content )
    unless @read_only
      @content = new_content
    end
  end
  
  def about_me
    puts "I am #{self}"
    puts "My title is #{self.title}"
    puts "I have #{self.word_count} words"
  end
  
  private
  def private_word_count
    @title.size
  end
  
end

class Novel < Document
  
end

class Person
  attr_accessor     :salary
  attr_reader       :name
  attr_writer       :password
  
end


doc = Document.new( 'Ethics', 'Spinoza', 'By that which is...' )
nov = Novel.new( 'Catcher in the Rye', 'J.D. Salinger', 'A story about a boy...' )
puts doc.about_me
puts nov.about_me
puts nov.class