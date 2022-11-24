require '../classes/student'

describe "Test the Rental class:" do
  student = Student.new(12, name: "Sandy", parent_permission: false)

  it "Check properties" do
    expect(student.name).to eql "Sandy"
    expect(student.age).to eql 12
    expect(student.parent_permission).to eql false
  end

  it "Check methode from inhereted class" do
    expect(student.can_use_services?).to eql false
  end
end