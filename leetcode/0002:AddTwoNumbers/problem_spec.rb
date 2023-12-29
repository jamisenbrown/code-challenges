# test_problem_spec.rb

require_relative 'problem'

RSpec.describe 'add_two_numbers' do
    it 'handles example 1' do
        list_1 = [2,4,3]
        list_2 = [5,6,4]
        answer = [7,0,8]
        result = main(list_1, list_2)
        expect(result).to eq(answer)
    end

    it 'handles example 2' do
        list_1 = [0]
        list_2 = [0]
        answer = [0]
        result = main(list_1, list_2)
        expect(result).to eq(answer)
    end

    it 'handles example 3' do
        list_1 = [9,9,9,9,9,9,9]
        list_2 = [9,9,9,9]
        answer = [8,9,9,9,0,0,0,1]
        result = main(list_1, list_2)
        expect(result).to eq(answer)
    end

  # Add more test cases as needed
end
