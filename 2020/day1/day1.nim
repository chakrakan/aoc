import strutils
from sequtils import map

const 
    contents = readFile("input.txt").strip().splitLines()
    nums: seq[int] = contents.map(parseInt)


proc partOne(input: seq[int]):int =
    for x in input:
        for y in input:
            if x+y == 2020: return x*y

proc partTwo(input: seq[int]):int =
    for x in input:
        for y in input:
            for z in input:
                if x+y+z == 2020: return x*y*z

echo "Part 1: ", partOne(nums)
echo "Part 2: ", partTwo(nums)