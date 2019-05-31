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

def my_transpose(matrix)
    transpose = Array.new(matrix.length) { [] }
    matrix.each do |subarray|
        subarray.each_with_index do |element, index|
        transpose[index] << element
        end
    end
    transpose
end

# def stock_picker(prices)
#     profit = 0
#     buy = 0
#     sell = 0
    
#     (0...prices.length-1).each do |el|
#         (el+1...prices.length).each do |el2|
#             diff = prices[el2] - prices[el]
#             if diff > profit
#                 buy = el
#                 sell = el2
#                 profit = diff
#             end
#         end
#     end
    
#     [buy, sell]
# end

def stock_picker(prices)
    diff, days = [], []

    (0...prices.length-1).each do |el|
        (el+1...prices.length).each do |el2|
            diff << prices[el2] - prices[el]
            days << [el, el2]
        end
    end

    days[diff.index(diff.max)]

end