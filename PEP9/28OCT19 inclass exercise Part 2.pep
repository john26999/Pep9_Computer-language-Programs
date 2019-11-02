       BR main

num:    .BLOCK 2   ;char ch; 
msg:    .ASCII "num = \x00"
     
main: DECI num, d   ; cin >> cin
      LDWA num, d    ; num = num %16
      ANDA 0x000F,i ; Ands the 16 to the num 
      STWA num, d
      STRO msg, d    ;cout << "num = 
      DECO num, d    ;<< num
      LDBA '\n', i   ; << endl 
      STBA 0XFC16, d 
      LDBA '\n', i     ; Output newline            ;<< endl
      STOP                ;return 0
      .END



 
 
 

