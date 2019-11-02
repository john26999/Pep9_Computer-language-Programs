       BR main
ch:    .BLOCK 1   ;char ch; 
     
main: LDBA 0xFC15, d   ; Gets char from keyboard ;cin >> ch
      STBA ch,d       ; Stotres the char to a memory location
      LDBA ch,d       ;ch--      
      SUBA 1,i        ; minus one from ch      
      STBA ch,d       
      LDBA ch,d       ;cout << ch
      STBA 0XFC16, d 
      LDBA  '\n', i     ; Output newline            ;<< endl
      STBA 0xFC16, d
      STOP                ;return 0
      .END



 
 
 

