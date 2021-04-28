def partition(arr, num)
    greater = []
    lesser = []
    new_arr = []

    arr.each do |ele|
        if ele < num
            lesser << ele
        else
            greater << ele
        end
    end

    new_arr << lesser
    new_arr << greater

    return new_arr
end

def merge(hash_1, hash_2)
    new_hash = Hash.new()
    hash_1.each { |k, v| new_hash[k] = v }
    hash_2.each { |k, v| new_hash[k] = v }
    return new_hash
end

def censor(str, curses)
    vowels = "aeiouAEIOU"
    words = str.split(" ")
    
    new_sentence = []

    words.each do |word|
        censored = ""
        if curses.include?(word.downcase)
            word.each_char do |char|
                if vowels.include?(char)
                    censored << "*"
                else
                    censored << char
                end
            end
            new_sentence << censored
        else
            new_sentence << word
        end
    end
    return new_sentence.join(" ")
end

def power_of_two?(num)
    (Math.log(num,2)) % 1 == 0
end