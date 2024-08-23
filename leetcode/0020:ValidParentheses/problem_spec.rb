# problem_spec.rb

require_relative 'problem'

RSpec.describe 'is_valid' do
    it 'handles example 1' do
        substring = '()'
        answer = true
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 2' do
        substring = '()[]{}()'
        answer = true
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 3' do
        substring = '(]'
        answer = false
        result = main(substring)
        expect(result).to eq(answer)
    end

    it 'handles example 4' do
        substring = '({([[]])})'
        answer = true
        result = main(substring)
        expect(result).to eq(answer)
    end

  # Add more test cases as needed
end

# rake spec SPEC=./problem_spec.rb