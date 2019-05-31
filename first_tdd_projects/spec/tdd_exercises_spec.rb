require 'tdd_exercises'

describe Array do

    describe "#uniq" do

        subject(:arr) { [1,2,1,1,4,3,5,5] }

        it 'should return a new array containing only unique elements' do
            ans = [1,2,4,3,5]

            expect(arr.uniq).to eq(ans)
        end
        
    end

end