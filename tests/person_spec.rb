require '../classes/person.rb'

describe "Test the Person class:" do
  it "Check patameters of an instance" do
    person = Person.new(12,  name: "Sandy")
    expect(person.age).to be 12
    expect(person.name).to eql "Sandy"
    expect(person.parent_permission).to eql true
  end

  it "Expect the can_use_services methode to be true:" do
    person = Person.new(12,  name: "Sandy")
    expect(person.can_use_services?).to eql true
  end

  it "Expect the can_use_services methode to be false:" do
    person = Person.new(17,  name: "Sandy", parent_permission: false)
    expect(person.can_use_services?).to eql false
  end
end