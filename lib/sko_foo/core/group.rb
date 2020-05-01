class Group
    attr_accessor :name
    
    def initialize(value = "")
        @name = value
        @name = "world" if @name.nil? || @name == ""
    end

    def to_string
        return "hello group: #{@name}"
    end
end
