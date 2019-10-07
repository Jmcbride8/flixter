class Stack
    attr_reader :data

    def initialize(user_arr)
        @data = user_arr
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        return @data[1]
    end

end

Stack.new([1,2,3,4,5])

puts Stack.pop
