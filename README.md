# SkoFoo

A simple guide on how the files in a Ruby library (`lib/`) relate to each other and to the files used by Rspec (`spec/`). This project was created using `bundle gem sko_foo` and then modified to demonstrate how the files could be structured in the appropriate directories. I would forgot how the files were related, what worked and what didn't. And so I created this project to remind me of some of the basic structure. Feel free to use it as you deem necessary.

*  `lib/` contains Ruby code for this gem
* `spec/` contains the rspec code necessary to test that functionality

## Structure

The code in `lib/` is structured as follows:

```shell
$ tree lib
lib
├── sko_foo
│   ├── core
│   │   └── group.rb
│   ├── core.rb
│   ├── data
│   │   ├── hello.rb
│   │   └── unit.rb
│   ├── data.rb
│   └── version.rb
└── sko_foo.rb
```

* `SkoFoo`, `SkoFoo::Core` and `SkoFoo::Data` are modules
* `HELLO` and `VERSION` are constants
* `Unit` and `Group` are classes

The code in `spec/` is structured as follows:

```shell
$ tree spec
spec
├── sko_foo
│   ├── core
│   │   └── group_spec.rb
│   ├── data
│   │   ├── unit_spec.rb
│   │   └── version_spec.rb
│   ├── data_spec.rb
│   └── sko_foo_spec.rb
└── spec_helper.rb
```

## Installation

Since this gem is only useful as a demonstration, no need to add it to anyone's Gemfile. If you want to interact with it, you can.

First, set it up:

    $ bin/setup

Then use the interactive prompt:

    $ bin/console

Or run the tests:

    $ rake spec

## Console

```shell
$ ./bin/console
irb(main):001:0> Unit.new.to_string
=> "hello, world"
irb(main):002:0> Unit.new("moon").to_string
=> "hello, moon"
irb(main):003:0> Group.new.to_string
=> "hello group: world"
irb(main):004:0> Group.new("moon").to_string
=> "hello group: moon"
irb(main):005:0> SkoFoo::VERSION
=> "0.0.1"
irb(main):006:0> SkoFoo::Data::VERSION
=> "0.0.2"
irb(main):007:0> SkoFoo::Data::HELLO
=> "world"
```

## Rspec

```shell
$ rspec

Group
  check Group.new.to_string() returns 'hello group: world'
  check Group.new('moon').to_string() returns 'hello group: moon'

Unit
  check Unit.new.to_string() returns 'hello, world'
  check Unit.new('moon').to_string() returns 'hello, moon'

SkoFoo::Data
  has a version number

SkoFoo::Data
  check HELLO is set to 'world'

SkoFoo
  has a version number

Finished in 0.00252 seconds (files took 0.19784 seconds to load)
7 examples, 0 failures

```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/sorens/sko_foo](https://github.com/sorens/sko_foo).

