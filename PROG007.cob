  IDENTIFICATION                  DIVISION.                  
  PROGRAM-ID. PROG007.                                       
  ENVIRONMENT                     DIVISION.                  
  CONFIGURATION                   SECTION.                   
  SPECIAL-NAMES.                                             
      DECIMAL-POINT IS COMMA.                                
  DATA                            DIVISION.                  
  WORKING-STORAGE                 SECTION.                   
  77  WRK-N1       PIC 9(02)V99 VALUE ZEROS.                 
  77  WRK-N2       PIC 9(02)V99 VALUE ZEROS.                 
  77  WRK-MEDIA    PIC 9(03)V99 COMP  VALUE ZEROS.           
  77  WRK-MEDIA-ED PIC ZZ9,99   VALUE ZEROS.                 
  PROCEDURE                       DIVISION.                  
      ACCEPT WRK-N1.                                         
      ACCEPT WRK-N2.                                         
 *==================================================         
       COMPUTE WRK-MEDIA = (WRK-N1 + WRK-N2) / 2.            
        MOVE WRK-MEDIA TO WRK-MEDIA-ED.                      
        DISPLAY 'MEDIA  ' WRK-MEDIA-ED.                      
       IF WRK-MEDIA LESS THAN 2 OR WRK-MEDIA EQUAL 2         
           DISPLAY 'ALUNO REPROVADO'.                        
       IF WRK-MEDIA LESS THAN 6 AND WRK-MEDIA GREATER THAN 2 
           DISPLAY 'ALUNO RECUPERACAO'.                      
       IF WRK-MEDIA GREATER THAN 6 OR WRK-MEDIA EQUAL 6      
           DISPLAY 'ALUNO APROVADO'.                         
     STOP RUN.                                               
