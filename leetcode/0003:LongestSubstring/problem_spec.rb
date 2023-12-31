# problem_spec.rb

require_relative 'problem'

RSpec.describe 'length_of_longest_substring' do
    it 'handles example 1' do
        substring = 'abcabcbb'
        answer = 3
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 2' do
        substring = 'bbbb'
        answer = 1
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 3' do
        substring = 'pwwkew'
        answer = 3
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 4' do
        substring = 'aab'
        answer = 2
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 5' do
        substring = 'dvdf'
        answer = 3
        result = main(substring)
        expect(result).to eq(answer)
    end

  # Add more test cases as needed
end
