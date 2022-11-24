require_relative '../classes/book'
require_relative '../classes/rental'
require_relative '../classes/person'

describe Book do
    before :each do
        @book_1 = Book.new('formula','Ben aziz')
        @book_2 = Book.new('the end','Victor')
        # @person = person.new(39, name: 'hames junior')
    end 
    context "text when creating book " do 
        it 'Should return the attribute' do
            expect(@book_1.title).to eq 'formula'
            expect(@book_2.title).to eq 'the end'
        end
        it 'should be an instance of the class Book' do
            expect(@book_1).to be_instance_of Book
            expect(@book_2).to be_instance_of Book
          end
    end
end