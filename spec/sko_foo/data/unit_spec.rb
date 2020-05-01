# note: you could create this spec file anywhere in 
# the spec/ directory. The location of the spec files is
# not important. I like to keep them organized or all of
# them at the top level. For example:
# 
# 1. spec/sko_foo/data/unit_spec.rb
# 2. spec/unit_spec.rb

# It is important to describe the class `Unit` instead of 
# `SkoFoo` otherwise the rspec print out doesn't correlate
# 
# Unit
# check unit.to_string() returns 'hello, world'
# check Unit.new('moon').to_string() returns 'hello, moon'

RSpec.describe Unit do
  it "check Unit.new.to_string() returns 'hello, world'" do
    expect(Unit.new.to_string()).to match("hello, world")
  end
  it "check Unit.new('moon').to_string() returns 'hello, moon'" do
    expect(Unit.new("moon").to_string()).to match("hello, moon")
  end
end
