import strutils
from sequtils import map

const passwords: seq[string] = readFile("input.txt").strip().splitLines()
    
proc partOne(input: seq[string]):int =
    var validPasswords = 0 
    for pass in passwords:
        let
            details = pass.split({'-', ' ', ':'})
            min = details[0].parseInt
            max = details[1].parseInt
            freq = details[4].count(details[2])
        if min <= freq and freq <= max: inc(validPasswords)
    return validPasswords

proc partTwo(input: seq[string]):int =
    var validPasswords = 0
    for pass in passwords:
        let
            details = pass.split({'-', ' ', ':'})
            p1 = details[0].parseInt
            p2 = details[1].parseInt
            character = details[2][0]
            password = details[4]

        if password[p1-1] == character xor password[p2-1] == character: inc(validPasswords)
    return validPasswords


echo "Part 1: ", partOne(passwords)
echo "Part 2: ", partTwo(passwords)