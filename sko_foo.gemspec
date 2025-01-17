require_relative 'lib/sko_foo/version'

Gem::Specification.new do |spec|
  spec.name          = "sko_foo"
  spec.version       = SkoFoo::VERSION
  spec.authors       = ["Steve Orens"]
  spec.email         = ["steve@orens.com"]

  spec.summary       = %q{Working guide for a Ruby library + rspec}
  spec.description   = %q{A working guide that shows how the files in lib/ relate to each other an to files in spec/}
  spec.homepage      = "http://github.com/sorens/sko_foo"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/sorens/sko_foo"
  spec.metadata["changelog_uri"] = "http://github.com/sorens/sko_foo/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
