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
      IF WRK-MEDIA = 6 OR WRK-MEDIA > 6              
         DISPLAY 'ALUNO APROVADO'                    
      ELSE                                           
      IF WRK-MEDIA > 2 AND WRK-MEDIA < 6             
         DISPLAY 'ALUNO RECUPERACAO'                 
      ELSE                                           
         DISPLAY 'ALUNO REPROVADO'.                  
    STOP RUN.                                        
