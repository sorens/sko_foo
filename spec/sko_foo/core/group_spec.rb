RSpec.describe Group do
  it "check Group.new.to_string() returns 'hello group: world'" do
    expect(Group.new.to_string()).to match("hello group: world")
  end
  it "check Group.new('moon').to_string() returns 'hello group: moon'" do
    expect(Group.new("moon").to_string()).to match("hello group: moon")
  end
end
