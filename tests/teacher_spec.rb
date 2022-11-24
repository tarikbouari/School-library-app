require '../classes/teacher'

describe "Test the teacher class:" do
  student = Teacher.new("Math", 30, name: "Sam")

  it "Check properties" do
    expect(student.name).to eql "Sam"
    expect(student.age).to eql 30
    expect(student.specialization).to eql "Math"
  end

  it "Check methode from inhereted class" do
    expect(student.can_use_services?).to eql true
  end
end