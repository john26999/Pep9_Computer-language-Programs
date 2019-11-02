                 BR main 
width:          .BLOCK 2          ;int width;  This holds the 2 bytes of information needed for decimals
length:         .BLOCK 2          ;int length; This holds the 2 bytes of information needed for decimals
perim:          .BLOCK 2          ;int perim;  This holds the 2 bytes of information needed for decimals
msg1:           .ASCII "\n w = \x00" ;cout << "w = "; This is your COUT message  
msg2:           .ASCII "\n l = \x00" ;cout << "l = "; This is your COUT message
msg3:           .ASCII "\n p = (w + l) * 2 = \x00" ;cout << "p = "; This is your COUT message 

main:           DECI width, d     ;cin >> width; This is your decimal keyboard input 
                DECI length, d    ;>> length;    This is your decimal keyboard input
                LDWA width, d     ;perim = width; This loads the decimal into their blocks 
                ADDA length, d    ;+ length); This adds the decimals 
                ASLA              ;* 2 (multiplication); Shift left to multiply, shift right to divide 
                STWA perim, d     ; stores the math formua & result into the perim block
                STRO msg1, d      ;cout << "w = "; Displays the message    
                DECO width, d     ;<< width; Displays the decimal;   
                LDBA '\n', i      ; cout << endl; End of line 
                STRO msg2, d      ;cout << "l = "; Displays the message  
                DECO length, d    ;<< length; Displays the decimal; 
                LDBA '\n', i      ;cout << endl; End of line
                LDBA '\n', i      ;cout << endl; End of line
                STRO msg3, d      ;cout << "p = (w + l) * 2 = " ; Displays the message  
                DECO perim, d     ; << perim; Displays the decimal;
                LDBA '\n', i      ; cout << endl; End of line
                STOP              ;return 0; Stops the program
               .END               ;END; Ends the program
