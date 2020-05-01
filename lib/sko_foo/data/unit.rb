# note: doesn't require the module for SkoFo or Data 
# but you can include the structure if you want.
# It would look like this

# module SkoFo
#   module Data
#       Class Unit
#           ...
#       end
#   end
# end

class Unit
    attr_accessor :hello
    
    def initialize(value = "")
        @hello = value
        @hello = "world" if @hello.nil? || @hello == ""
    end

    def to_string
        "hello, #{@hello}"
    end
end
