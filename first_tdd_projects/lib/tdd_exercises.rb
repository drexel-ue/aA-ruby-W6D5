class Array

    def uniq
        ans = []
        self.each { |el| ans << el if !ans.include?(el) }
        ans
    end

    def two_sum
        ans = []

        (0...length-1).each do |el|
            (el+1...length).each do |el2|
                ans << [el, el2] if self[el] + self[el2] == 0
            end
        end
        ans
    end
    
end