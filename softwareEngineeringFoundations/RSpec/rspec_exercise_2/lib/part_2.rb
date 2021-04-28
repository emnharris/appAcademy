def palindrome?(str)
    new_str = []
    chars = str.split("")

    chars.each { |char| new_str.unshift(char) }

    str == new_str.join("")
end

def substrings(str)
    substrings = []

    (0...str.length).each do |start_ind|
        (start_ind...str.length).each do |end_ind|
            substrings << str[start_ind..end_ind]
        end
    end

    return substrings
end

def palindrome_substrings(str)
    pal_sub = []

    substrings = substrings(str)
    substrings.each do |substr|
        if substr.length > 1 && palindrome?(substr)
            pal_sub << substr
        end
    end

    return pal_sub
end