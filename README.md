# Knight's Tour

## Summary
The knight's tour problem is the mathematical problem of finding a knight's tour.
A knight's tour is a sequence of moves of a knight on a chessboard such that the knight visits every square only once. If the knight ends on a square that is one knight's move from the beginning square, the tour is closed, otherwise it is open. The problem of finding a closed knight's tour is similarly an instance of the Hamiltonian cycle problem. Unlike the general Hamiltonian path problem, the knight's tour problem can be solved in linear time.

The knight's tour problem can be solved using backtracking. Backtracking is an algorithmic paradigm that tries different solutions until finds a solution that “works”.
A Knight can make maximum eight moves.
Algorithm:
'''
    If all squares are visited 
        print the solution
    Else
       a) Add one of the next moves to solution vector and recursively 
       check if this move leads to a solution.
       b) If the move chosen in the above step doesn't lead to a solution
       then remove this move from the solution vector and try other 
       alternative moves.
       c) If none of the alternatives work then return false (Returning false 
       will remove the previously added item in recursion and if false is 
       returned by the initial call of recursion then "no solution exists" )
'''

## Programming Language
MATLAB

### File Description
Degree_moves: Calculate degree of every valid move and takes the minimum
all_possible_moves: All possible 8 moves of knight
chessboard: Move on chessboard.
coord: Tells the position by cartesian system.
current: Tells the position by block number
hami1: Main function. File to find the hamiltonian cycle.
