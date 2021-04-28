def average(num1, num2)
    (num1 + num2) / 2.0
end

def average_array(arr)
    sum = 0
    arr.each { |ele| sum += ele }
    sum / (arr.length * 1.0)
end

def repeat(str, num)
    new_str = ""
    num.times { new_str += str }
    return new_str
end

def yell(str)
    return str.upcase + "!"
end

def alternating_case(str)
    words = str.downcase.split(" ")

    alternating = []

    words.each_with_index do |word, i|
        if i.even?
            alternating << word.upcase
        else
            alternating << word
        end
    end

    return alternating.join(" ")
end