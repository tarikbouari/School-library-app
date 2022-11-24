require '../classes/nameable.rb'

describe "Test the namable class:" do
  it "Rasing NotImplementedError error" do
    test = Nameable.new()
    expect{test.correct_name}.to raise_error(NotImplementedError)
  end
end