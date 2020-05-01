require "bundler/setup"

# It is important to include the top level of your library
# You should not need to include any more than that if the
# top level of your library requires all of the branches of
# your library
require "sko_foo"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
