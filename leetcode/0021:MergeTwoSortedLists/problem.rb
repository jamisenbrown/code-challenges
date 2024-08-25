# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    # for those edge cases
    if list1.nil? && list2.nil?
        return ListNode.new(nil, nil)
    elsif list1.nil?
        return list2
    elsif list2.nil?
        return list1
    end

    if list1.val <= list2.val
        starterNode = list1
        list1 = list1.next
    else
        starterNode = list2
        list2 = list2.next
    end

    upcomingNode = starterNode

    while !list1.nil?
        if list1.val <= list2.val
            upcomingNode.next = list1
            list1 = list1.next
        else
            upcomingNode.next = list2
            list2 = list2.next
        end

        upcomingNode = upcomingNode.next
    end

    upcomingNode.next = list2 if !list2.nil?

    return starterNode
end

# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def main(list1, list2)
    merge_two_lists(list1, list2)
end

# execute: ruby -r "./problem.rb" -e "main <List1> <List2>"
# example: ruby -r "./problem.rb" -e "main ListNode.new(1, nil) ListNode.new(2, nil)"