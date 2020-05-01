RSpec.describe SkoFoo::Data do
  it "check HELLO is set to 'world'" do
    expect(SkoFoo::Data::HELLO).to eq("world")
  end
end
