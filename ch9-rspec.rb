# Testing
# ----------------
require_relative 'document'

describe Document do
  before :each do
    @text = 'A bunch of words'
    @doc = Document.new ( 'test', 'nobody', @text )
  end
  
  it 'should hold on to the contents' do
    @doc.content.should == @text
  end
  
  it 'should know which words it has' do
    @doc.words.should include ('A')
  end
  
  it 'should hava a functional clone method' do
    doc1 = Document.new( 'title', 'author', 'some stuff' )
    doc2 = doc1.clone
    
    doc2.title.should == 'titlea'
    doc2.author.should == 'author'
    doc2.content.should == 'some stuff'
  end
end