# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # create nums_hash to store iterated numbers
    nums_hash = {}
    # iterate over nums array
    nums.each_with_index do |num, index|

        # iterate over stored numbers
        nums_hash.each do |hash_index, hash_num|

            if (num + hash_num == target)
                return [index, hash_index]
            end
        end

        # add num onto hash for answer that didn't happen
        nums_hash[index] = num
    end
end

# execute: ruby -r "./problem.rb" -e "two_sum <nums>, <target>"
# example ruby -r "./problem.rb" -e "two_sum [1, 2, 3], 9"