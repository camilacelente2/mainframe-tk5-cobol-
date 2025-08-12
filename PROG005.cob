  IDENTIFICATION                  DIVISION.             
  PROGRAM-ID. PROG005.                                  
  ENVIRONMENT                     DIVISION.             
  DATA                            DIVISION.             
  WORKING-STORAGE                 SECTION.              
  77  WRK-V1  PIC 9(02) VALUE ZEROS.                    
  77  WRK-V2  PIC 9(02) VALUE ZEROS.                    
  77  WRK-RES PIC 9(03) COMP  VALUE ZEROS.              
  PROCEDURE                       DIVISION.             
      ACCEPT WRK-V1.                                    
      ACCEPT WRK-V2.                                    
 *==================================================    
        ADD WRK-V1 WRK-V2 TO WRK-RES.                   
           DISPLAY '------------ ADICAO --------------'.
           DISPLAY  'VALOR 1...   '  WRK-V1.            
           DISPLAY  'VALOR 2..... '  WRK-V2.            
           DISPLAY  'RESULTADO..  '  WRK-RES.           
      STOP RUN.                                         
