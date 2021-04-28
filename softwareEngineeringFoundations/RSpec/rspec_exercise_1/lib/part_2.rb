def hipsterfy(str)
    vowels = "aeiouAEIOU"
    hipsterfied = ""
    vowel_deleted = false

    str.reverse.each_char.with_index do |char|
        if vowels.include?(char) && !vowel_deleted
            vowel_deleted = true
        else
            hipsterfied << char
        end
    end
    return hipsterfied.reverse
end

def vowel_counts(str)
    vowels = "aeiouAEIOU"
    v_chars = []

    str.downcase.each_char { |char| v_chars << char if vowels.include?(char) }

    counts = Hash.new(0)

    v_chars.each { |char| counts[char] += 1 }

    return counts
end

def caesar_cipher(str, num)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    caesar = alpha.split("").rotate(num)
    key = Hash.new
    alpha.each_char.with_index { |letter, i| key[letter] = caesar[i] }
    new_str = []

    str.each_char do |char|
        if alpha.include?(char)
            new_str << key[char]
        else
            new_str << char
        end
    end

    return new_str.join("")
end