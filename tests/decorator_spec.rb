require_relative '../classes/decorator'
require_relative '../classes/capitalize'
require_relative '../classes/person'

describe CapitalizeDecoration do
  before :each do
    @person = Person.new(22, name: 'habib')
    @capitalized = CapitalizeDecoration.new(@person)
  end

  context 'When using the correct_name method from the CapitalizeDecorator class' do
    it 'can use correct_name' do
      expect(@capitalized).to respond_to(:correct_name)
    end
    it 'should have the first letter as uppercase' do
      expect(@capitalized.correct_name[0]).to eql @person.name[0].upcase
    end
    it 'should return the name in capitalized' do
      expect(@capitalized.correct_name).to eql 'Habib'
    end
  end
end
