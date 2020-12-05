import strutils
from sequtils import map

const trajectoryMap: seq[string] = readFile("input.txt").strip().splitLines()

proc partOne(input: seq[string]):int =
    var numTrees = 0
