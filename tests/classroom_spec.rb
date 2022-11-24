require_relative '../classes/student'
require_relative '../classes/classroom'

describe Classroom do
    before do 
        @classroom = Classroom.new('A30')
        @student = Student.new('A',25,  name:'koud')
    end
    context 'When creating a new Classroom class' do
        it 'should have a label property' do
          expect(@classroom.label).to eql 'A30'
        end
        it 'the label should be a string' do
          expect(@classroom.label).to be_kind_of String
        end
        it 'should be an instance of the Classroom class' do
          expect(@classroom).to be_instance_of Classroom
        end
      end
end