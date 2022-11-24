require '../classes/person.rb'

describe "Test the Person class:" do
  it "Create a person" do
    person = Person.new(12,  name: "Sandy")
    expect(person.age).to be 12
    expect(person.name).to eql "Sandy"
    expect(person.parent_permission).to be true
  end
end