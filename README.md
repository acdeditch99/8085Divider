# 8085Divider

This was part of a HomeWork Assignment, so ignore the non-pertaining pages on the PDFs.

'hw7a.asm' is a short implementation of an unsigned 8-bit divider program on 8085 using only successive subtractions.
Due to some clever use of flags and the subtraction instruction, I was able avoid explicit checks for 0s in the main loop.

Thus this program executes with fewer instructions, fewer clock cycles, and takes up less space in memory than any other nearly identical program, for written for the same assignment, than my peers. 

The test case executes with only 142 clock cycles and 25 instructions executed.
The lowest numbers from another student I had heard about were 34 instructions and over 150 cycles executed, while the average was much higher.

Given the constraints, I do believe this speedup is significant enough to post.