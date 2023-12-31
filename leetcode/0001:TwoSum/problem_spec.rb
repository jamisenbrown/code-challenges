# problem_spec.rb

require_relative 'problem'

RSpec.describe 'two_sum' do
    it 'handles example 1' do
        nums = [2, 7, 11, 15]
        target = 9
        result = two_sum(nums, target)
        expect(result).to contain_exactly(0, 1)
    end

    it 'handles example 2' do
        nums = [3, 2, 4]
        target = 6
        result = two_sum(nums, target)
        expect(result).to contain_exactly(1, 2)
    end

    it 'handles example 3' do
        nums = [3, 3]
        target = 6
        result = two_sum(nums, target)
        expect(result).to contain_exactly(0, 1)
    end

  # Add more test cases as needed
end
