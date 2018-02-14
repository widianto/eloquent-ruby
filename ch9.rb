# Testing chapter
# ----------------
require 'test/unit'
require_relative 'document.rb'

class DocumentTest < Test::Unit::TestCase
  def setup
    @text = "A bunch of words"
    @doc = Document.new( "Title", "Author", @text)
  end
  
  def test_document_holds_onto_contents
    assert_equal @text, @doc.content, "Content are still there"
  end
  
  def test_that_doc_can_return_words_in_array
    assert @doc.words.include?( 'A' )
    assert @doc.words.include?( 'bunch' )
    assert @doc.words.include?( 'of' )
    assert @doc.words.include?( 'words' )
  end
  
  def test_that_word_count_is_correct
    assert_equal 4, @doc.word_count, 'Word count is correct'
  end
  
  def test_random
    assert_match /times.*/, 'times new roman'
    assert_instance_of String, 'hello'
    assert_raise ZeroDivisionError do
      x = 1/0
    end
    
    assert_nothing_thrown do
      x = 1/2
    end
  end
    
end