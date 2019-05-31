require 'tdd_exercises'

describe Array do

    describe "#uniq" do

        subject(:arr) { [1,2,1,1,4,3,5,5] }

        it 'should return a new array containing only unique elements' do
            ans = [1,2,4,3,5]

            expect(arr.uniq).to eq(ans)
        end
        
    end

    describe "#two_sum" do
        subject(:arr) {[-1,0,2,-2,1]}

        it 'finds all pairs of positions where the elements at those positions sum to zero' do
            ans = [[0, 4], [2, 3]]
            expect(arr.two_sum).to eq(ans)
        end
    end

end

describe '#my_transpose' do

    subject(:orig) {
        [[0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]]
    }

    it 'convert between the row-oriented and column-oriented representations' do
        transposition = [[0, 3, 6],
                        [1, 4, 7],
                        [2, 5, 8]]
        expect(my_transpose(orig)).to eq(transposition)

    end
end

describe '#stock_picker' do

    subject(:prices) { [1000, 300, 2000000, 3000, 555555, 100000000000] }

    it 'outputs the most profitable pair of days on which to first buy the stock and then sell the stock' do
        ans = [1, 5]

        expect(stock_picker(prices)).to eq(ans)
    end

end