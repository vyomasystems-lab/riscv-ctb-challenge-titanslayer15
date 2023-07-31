Bugs:
LW: when loading a word some biuts can be comeoltey off. this seems to happen most when all four bits of each byte are set. this could be a result 
of the code generating )xffffffff by logging -1, and the buggy risc-v may not be able to handle that


Sample load instgructions not working form spike dum (*forgot to get a screen shot of this one:

> 3 0x80000428 (0x01012203) x 4 0x00000000
96436c95422
< 3 0x8000045c (0x04412883) x17 0x000007fd
---
> 3 0x8000045c (0x04412883) x17 0x000007fe
96445c95431
< 3 0x80000480 (0x06812d03) x26 0x00000000
---
> 3 0x80000480 (0x06812d03) x26 0x5cb1cbc5

in the buggy rsic-v the Expitons/ interrupts are not being triggered or enetered properly, as instructrions in the non buggy code happenn muxch later than the buggy one.
there is also record of the Trap handler being entered in the non buggy risc-v but not so much the buggy one.
![handler code](https://github.com/vyomasystems-lab/riscv-ctb-challenge-titanslayer15/assets/122556862/dac4b680-d45a-4e95-9c06-ef284195da1c)


AND instruction did not set bits corerectly in some cases, and passed all 0s thios coul,d be due to the bug in the load intruciton hoever.

ORI is not setting all the bits correctly it seems most common in the 2nd and 3rd bytes

some instances of the ADD instruction have a bug when adding or subratcting with the zero register, hoiwever this could be due to the LW bug aswell

XOR is also setting the bits improperly similar to the ORI instuction

the OR instruction is also off as it is not setting the bits correctly

All versions of OR/XOR, are a little meessed up, and are not correctly setting the bits properly.

![image](https://github.com/vyomasystems-lab/riscv-ctb-challenge-titanslayer15/assets/122556862/6023263f-8c4f-4087-bbb4-c01a97051cba)


![image](https://github.com/vyomasystems-lab/riscv-ctb-challenge-titanslayer15/assets/122556862/de7f59e3-f255-4114-a6ec-887c4abc370f)


Challenge 2:
to generate the coverage report i had to run the cov command wqhile specifiying the output. i was able to run some directed tests and in crease the amount of generation in the arhtimetic test, but i was unable to create any jump instructions
due to errros in the tools minteraction with my yaml file. 
