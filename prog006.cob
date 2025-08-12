  IDENTIFICATION                  DIVISION.                
  PROGRAM-ID. PROG005.                                     
  ENVIRONMENT                     DIVISION.                
  CONFIGURATION                   SECTION.                 
  SPECIAL-NAMES.                                           
      DECIMAL-POINT IS COMMA.                              
  DATA                            DIVISION.                
  WORKING-STORAGE                 SECTION.                 
  77  WRK-V1     PIC 9(02)V99 VALUE ZEROS.                 
  77  WRK-V2     PIC 9(02)V99 VALUE ZEROS.                 
  77  WRK-RES    PIC 9(03)V99 COMP  VALUE ZEROS.           
  77  WRK-RES-ED PIC ZZ9,99   VALUE ZEROS.                 
  PROCEDURE                       DIVISION.                
      ACCEPT WRK-V1.                                       
      ACCEPT WRK-V2.                                       
 *==================================================       
       ADD WRK-V1 WRK-V2 TO WRK-RES.                       
        MOVE WRK-RES TO WRK-RES-ED.                        
           DISPLAY '------------ ADICAO --------------'.   
           DISPLAY  'VALOR 1...   '  WRK-V1.               
           DISPLAY  'VALOR 2..... '  WRK-V2.               
           DISPLAY  'RESULTADO..  '  WRK-RES.              
           DISPLAY  'RESULTADO..  '  WRK-RES-ED.           
      STOP RUN.                                            
