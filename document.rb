# Base document for testing
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
  
  def index_for( word ) i= 0
    # words.each do |this_word|
    #   return i if word == this_word
    #   i += 1
    # end
    words.find_index { |this_word| word == this_word }
  end
  
  def average_word_length
    total = words.inject(0.0){ |result, word| word.size + result}
    total / word_count
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
  
  def clone
    Document.new( title.clone, author.clone, content.clone )
  end
end