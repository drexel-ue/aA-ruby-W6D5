class Array

    def uniq
        ans = []
        self.each { |el| ans << el if !ans.include?(el) }
        ans
    end

end