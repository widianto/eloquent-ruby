# poem_words = [ 'twinkle', 'little', 'star', 'how', 'I', 'wonder']
# puts poem_words
#
# poem_words = %w{ twinkle little star how I wonder }
# puts poem_words

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
  
  
end



def echo_all *args
  args.each { |a| puts a }
end

# echo_all 1, 2, 3, "ABC", 12.3, "z"


doc = Document.new "Eloquent Ruby", "Russ Olsen", "Both hashes and arrays have many talents beyond the each method: Both of these classes come equipped with very extensive APIs. To take a simple example, imagine that we want to add a method to the Document class, a method that will return the index of a particular word"

puts doc.index_for( "and" )
puts doc.average_word_length

a = [ 1, 2, 3]
a.reverse

p a.reverse!
p a

p "---------"

hey_its_ordered = { first: 'mama', second: 'papa', third: 'baby' }
p hey_its_ordered
hey_its_ordered.each { |entry| p entry }

# XML to simple hash
# require 'xmlsimple'
# data = XmlSimple.xml_in('dc.xml')

array = [ 0, -10, -9, 5, 9 ]
# array.each_index {|i| array.delete_at(i) if array[i] < 0}

array.delete_if { |x| x < 0 }
p array

# learn Set library