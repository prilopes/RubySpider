class Stack < List

    alias top last  

    def initialize
      super
    end
    
    def empty?
      top.nil?
    end

    def push(value)
      add(value, :as_last)
    end

    def pop
      remove(:last)
    end
end
