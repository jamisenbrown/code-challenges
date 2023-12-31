# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    answer_string = ''
    current_string = ''

    s.each_char do |letter|
        if current_string.include?(letter)
            index = current_string.index(letter)
            
            if index != current_string.length
                current_string = current_string[(index + 1)..]
            end
        end
        
        current_string << letter
        
        if current_string.length > answer_string.length
            answer_string = current_string
        end
    end

    answer_string.length
end

# @param {String} s
# @return {Integer}
def main(s)
    length_of_longest_substring(s)
end

# execute: ruby -r "./problem.rb" -e "main <s>"
# example: ruby -r "./problem.rb" -e "main 'abcabcbb'"