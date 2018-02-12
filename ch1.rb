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
  
end

# 10.times do |n|
#   puts "The number is #{n}"
# end

doc = Document.new "Eloquent Ruby", "Russ Olsen", "Lorem ipsum dolor sit amet"

puts doc.instance_of?( self.class.superclass.class )

doc.words.each do |word|
  puts word
end

require 'set'
