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