# Learning Dynamic Typing

class BaseDocument
  def title
    raise "Not Implemented"
  end
  
  def title=
    raise "Not Implemented"
  end
  
  def author
    raise "Not Implemented"
  end
  
  def author=
    raise "Not Implemented"
  end
  
  def content
    raise "Not Implemented"
  end
  
  def words
    raise "Not Implemented"
  end
  
  def word_count
    raise "Not Implemented"
  end
  
  # And so on for the content=
  # words and word_count methods...
end


class Document < BaseDocument
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
end


class LazyDocument < BaseDocument
  attr_writer :title, :author, :content
  
  def initialize path
    @path = path
    @document_read = false
  end
  
  def read_document
    return if @document_read
    File.open( @path ) do |f|
      @title = f.readline.chomp
      @author = f.readline.chomp
      @content = f.read
    end
    @document_read = true
  end
  
  def title
    read_document
    @title
  end
  
  def title=( new_title )
    read_document
    @title = new_title
  end
end


# open_file = File.open( '/etc/passwd' )
# puts open_file.read
#
# require 'stringio'
# open_string = StringIO.new( "Server:/var/empty:/usr/bin/false\n_launchservicesd:*:239:239:_launchservicesd:/var/empty:/usr/bin/false" )
# puts open_string

require 'set'
five_even = [ 2, 4, 6, 8, 10 ]
five_even_set = Set.new ( five_even )

puts five_even
p five_even_set
