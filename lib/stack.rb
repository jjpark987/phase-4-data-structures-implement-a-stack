class Stack
    def initialize limit = 5
        @stack = []
        @limit = limit
    end

    def push value
        if @limit && @stack.size < @limit
            return @stack << value
        end
        raise StandardError, 'Stack Overflow'
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        @stack.size == 0
    end

    def full?
        @stack.size == @limit
    end

    def search value
        if @stack.include?(value)
            return @stack.size - @stack.index(value) - 1
        end
        -1
    end
end