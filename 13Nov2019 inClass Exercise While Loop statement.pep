numLoops: .EQUATE 10         ;const numLoops = 10;
x:        .EQUATE 0           ;local variable #2d ;int x; 
main:     SUBSP 2, i          ;allocate #x ;int main (){
          LDWA 0, i           ; for (x=0;
          STWA x, s           ; 
while:      LDWA x, s            ;while  x<numLoops;
          CPWA numLoops, i    
          BRGE endWhile
          DECO x, s           ; cout << x         
          LDBA '\n', i        ;<< endl; 
          STBA 0xFC16, d         
          LDWA x, s           ; x++)         
          ADDA 1, i 
          STWA x, s
          BR while 
endWhile: ADDA 2, i           ;deallocate #x        
          STOP                ; return 0;
         .END