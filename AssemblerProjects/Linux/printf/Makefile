all: print_slash 
	rm -rf Lox.out
	rm -rf test.o 

	gcc -no-pie test.s -o Lox.out

listing:
	rm -rf test.lst
	as -a  -am test.s -no-pie -c  > test.lst
###################################################################

prot: 
	rm -rf prototype.out
	gcc printf_prot.cpp -o prototype.out


run_prot:
	@./prototype.out
	@echo

example:
	rm -rf switch.s
	gcc -S  -fno-pie -fno-dwarf2-cfi-asm switch.c -Os #seems to be some troubles


###########################################################

test:
	rm -rf a.out
	rm -rf test_my_printf.o my_printf.o
	gcc -c my_printf.s
	gcc -c test_my_printf.c

	gcc test_my_printf.o my_printf.o -no-pie
print_slash:
	@echo --------------------------------------------------------

link: 
	ld -o a.out -dynamic-linker \
		/lib/ld-linux.so.2  \
		/usr/lib/crt1.o /usr/lib/crti.o -lc test.o /usr/lib/crtn.o