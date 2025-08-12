IDENTIFICATION                  DIVISION.             
PROGRAM-ID. PROG003.                                  
ENVIRONMENT                     DIVISION.             
DATA                            DIVISION.             
WORKING-STORAGE                 SECTION.              
77  WRK-V1  PIC 9(02) VALUE ZEROS.                    
77  WRK-V2  PIC 9(02) VALUE ZEROS.                    
77  WRK-RES PIC 9(03) VALUE ZEROS.                    
PROCEDURE                       DIVISION.             
    ACCEPT WRK-V1.                                    
    ACCEPT WRK-V2.                                    
==================================================    
      ADD WRK-V1 WRK-V2 TO WRK-RES.                   
         DISPLAY '------------ ADICAO --------------'.
         DISPLAY  'VALOR 1...   '  WRK-V1.            
         DISPLAY  'VALOR 2..... '  WRK-V2.            
         DISPLAY  'RESULTADO..  '  WRK-RES.           
==================================================    
      MOVE 0 TO WRK-RES.                              
      SUBTRACT WRK-V1 FROM WRK-V2 GIVING WRK-RES.     
          DISPLAY '------------ SUBTRACAO ----------'.
          DISPLAY  'VALOR 1...   '  WRK-V1.           
          DISPLAY  'VALOR 2..... '  WRK-V2.           
          DISPLAY  'RESULTADO..  '  WRK-RES.          
==================================================    
      MOVE 0 TO WRK-RES.                              
      MULTIPLY WRK-V1 BY WRK-V2 GIVING WRK-RES.       
          DISPLAY '------------ MULTIPLICACAO ------'.
          DISPLAY  'VALOR 1...   '  WRK-V1.           
          DISPLAY  'VALOR 2..... '  WRK-V2.           
          DISPLAY  'RESULTADO..  '  WRK-RES.          
==================================================    
      MOVE 0 TO WRK-RES.                              
      DIVIDE WRK-V1 BY WRK-V2 GIVING WRK-RES.         
          DISPLAY '------------ DIVISAO ---------'.   
          DISPLAY  'VALOR 1...   '  WRK-V1.           
          DISPLAY  'VALOR 2..... '  WRK-V2.           
          DISPLAY  'RESULTADO..  '  WRK-RES.          
==================================================    
   COMPUTE WRK-RES = (WRK-V1 + WRK-V2) / 2.         
       DISPLAY '------------ MEDIA ------------'.   
       DISPLAY  'VALOR 1...   '  WRK-V1.            
       DISPLAY  'VALOR 2..... '  WRK-V2.            
       DISPLAY  'RESULTADO..  '  WRK-RES.           
 STOP RUN.                                          
