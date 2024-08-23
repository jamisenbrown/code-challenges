# @param {String} s
# @return {Boolean}
def is_valid(s)
    return false if s.length <= 1
    stack = ''


    s.each_char do |c|
        if c == '[' || c == '(' || c == '{'
            stack += c
            next
        end

        if c == ']' && stack[-1] == '[' ||
            c == ')' && stack[-1] == '(' ||
            c == '}' && stack[-1] == '{'

            stack = stack.chop
            next
        end

        return false # something didn't go right here
    end

    return false if stack.length > 0 # in the case that this is '[['
    return true
end

# @param {String} s
# @return {Boolean}
def main(s)
    is_valid(s)
end

# execute: ruby -r "./problem.rb" -e "main <s>"
# example: ruby -r "./problem.rb" -e "main '[]{}'"