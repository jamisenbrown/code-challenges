# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    number_1 = get_number(l1)
    # puts number_1
    number_2 = get_number(l2)
    # puts number_2

    total = number_1.to_i + number_2.to_i
    # puts total # 807 -> return 7, 0, 8
    printed_total = total.to_s

    list_node = ListNode.new(printed_total[0].to_i, nil)

    if (printed_total.length > 1)
        printed_total = printed_total[1, printed_total.length]

        printed_total.each_char do |number|
            new_node = ListNode.new(number.to_i, list_node)
            list_node = new_node
        end
    end

    list_node
end

# input: list_nodes [2, 4, 3]
# output: number 342
def get_number(nodes_list)
    list_number = ''

    loop do
        list_number = nodes_list.val.to_s + list_number

        break if nodes_list.next.nil?

        next_node = nodes_list.next
        nodes_list = next_node
    end

    list_number
end

# param {Array numbers} l1
# param {Array numbers} l2
def main(l1, l2)
    l1_node = create_list_node(l1)
    l2_node = create_list_node(l2)

    sum = add_two_numbers(l1_node, l2_node)

    answer = []
    loop do
        answer << sum.val

        break if sum.next.nil?

        next_node = sum.next
        sum = next_node
    end

    answer
end

# param {Array numbers} num_array
# returns {ListNode}
def create_list_node(num_array)
    # create a new node to pass into add_two_numbers
    list_node = ListNode.new(num_array[num_array.length - 1], nil)

    if (num_array.length > 1)
        num_array = num_array[0, num_array.length - 1] # concatenate down

        num_array.reverse.each do |number|
            new_node = ListNode.new(number.to_i, list_node)
            list_node = new_node
        end
    end

    list_node
end

class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# execute: ruby -r "./problem.rb" -e "main <l1>, <l2>"
# example: ruby -r "./problem.rb" -e "main [2,4,3], [5,6,4]"