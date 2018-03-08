# Testing
# ----------------
require 'rspec'
require_relative 'document.rb'
require_relative 'printer.rb'

RSpec.describe Document do
  
  before :each do
    @text = "A bunch of words"
    @doc = Document.new( "Title", "Author", @text)
  end
  
  it 'should hold on to the contents' do
    expect(@doc.content).to eq @text
  end
  
  it 'should know which words it has' do
    expect(@doc.words).to include( 'A' )
    expect(@doc.words).to include( 'bunch' )
    expect(@doc.words).to include( 'of' )
    expect(@doc.words).to include( 'words' )
  end
  
  it 'should know how many words it contains' do
    expect(@doc.words.count).to eq( 4 )
  end
  
  it 'should hava a functional clone method' do
    doc1 = Document.new( 'title', 'author', 'some stuff' )
    doc2 = doc1.clone
    
    expect(doc2.title).to eq( 'title' )
    expect(doc2.author).to eq(  'author' )
    expect(doc2.content).to eq(  'some stuff' )
  end
end

RSpec.describe PrintableDocument do
  
  before :each do
    @text = "A bunch of words"
    @doc = PrintableDocument.new( "test", "nobody", @text )
  end
  
  it 'should know how to print itself' do
    
    stub_printer = double( @doc )
    allow( stub_printer ).to receive_chain_messages(
      :available => true,
      render => nil
    )
    expect( @doc.print( stub_printer ) ).to eq( "Done" )
  end
  
  # it 'should return the proper string if printer is offline' do
  #   stub_printer = stub :available? => false, :render => nil
  #   expect( @doc.print( stub_printer ) ).to eq( "Printer unavailable" )
  # end
  
end