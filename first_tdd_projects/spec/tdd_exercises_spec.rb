require 'tdd_exercises'

describe "#uniq" do

    subject(:arr) { [1,2,1,1,4,3,5,5] }

    it 'should return a new array containing only unique elements' do
        ans = [1,2,4,3,5]

        expect(uniq(arr)).to eq(ans)
    end
    
end
