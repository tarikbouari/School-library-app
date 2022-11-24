require_relative '../classes/book'
require_relative '../classes/rental'
require_relative '../classes/person'

describe Book do
  before :each do
    @firstbook = Book.new('formula', 'Ben aziz')
    @scndbook = Book.new('the end', 'Victor')
  end
  context 'text when creating book ' do
    it 'Should return the attribute' do
      expect(@firstbook.title).to eq 'formula'
      expect(@scndbook.title).to eq 'the end'
    end
    it 'should be an instance of the class Book' do
      expect(@firstbook).to be_instance_of Book
      expect(@scndbook).to be_instance_of Book
    end
  end
end
