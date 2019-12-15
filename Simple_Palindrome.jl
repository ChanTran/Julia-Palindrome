#==
Chan Le
==#

function first(word)
    first = firstindex(word)
    word[first]
end

function last(word)
    last = lastindex(word)
    word[last]
end

function middle(word)
    first = firstindex(word)
    last = lastindex(word)
    word[nextind(word, first) : prevind(word, last)]
end

function ispalindrome(word)
    if length(word) == 0 || length(word) == 1
        return true
    end
    if first(word) != last(word)
        return false
    else
        return ispalindrome(middle(word))
    end
end

function main()
    println(ispalindrome("racecar"))
    println(ispalindrome("eyeforofeye"))
    println(ispalindrome("tattarrattat"))
end

main()
