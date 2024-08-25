# problem_spec.rb

require_relative 'problem'

def linked_list_to_array(list)
    array = []
    while list
      array << list.val
      list = list.next
    end
    array
end

RSpec.describe 'merge_two_lists' do
    it 'handles example 1' do
        list1 = ListNode.new(1, ListNode.new(2, ListNode.new(4)))
        list2 = ListNode.new(1, ListNode.new(3, ListNode.new(4)))

        result = linked_list_to_array(main(list1, list2))
        answer = [1, 1, 2, 3, 4, 4]
        expect(result).to eq(answer)
    end

    it 'handles example 2' do
        list1 = nil
        list2 = nil

        result = linked_list_to_array(main(list1, list2))
        answer = []
        expect(result).to eq(answer)
    end

    it 'handles example 3' do
        list1 = nil
        list2 = ListNode.new(0, nil)

        result = linked_list_to_array(main(list1, list2))
        answer = [0]
        expect(result).to eq(answer)
    end

    it 'handles example 4' do
        list1 = ListNode.new(2, nil)
        list2 = ListNode.new(1, nil)

        result = linked_list_to_array(main(list1, list2))
        answer = [1, 2]
        expect(result).to eq(answer)
    end

  # Add more test cases as needed
end

# rake spec SPEC=./problem_spec.rb