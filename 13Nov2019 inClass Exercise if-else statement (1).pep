		BR main
cop:	.BLOCK 2             ;global variable
driver:	.BLOCK 2             ;global variable                  
main:	LDWA 0, i            ;cop =0 
	STWA cop, d     
	LDWA 40, i           ;driver = 40       
	STWA driver, d
do:	LDWA cop, d          ; cop += 25  
	ADDA 25, i
	STWA cop, d
	LDWA driver, d       ;driver += 20
	ADDA 20, i
	STWA driver, d
while:	LDWA cop, d          ; while cop<driver
	CPWA driver, d
	BRLT do
	DECO cop,d           ;cout << cop       
	STOP
	.END




   




   