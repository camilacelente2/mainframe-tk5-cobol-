 IDENTIFICATION                  DIVISION.                  
 PROGRAM-ID. PROG011.                                       
 ENVIRONMENT                     DIVISION.                  
 DATA                            DIVISION.                  
 WORKING-STORAGE                 SECTION.                   
 77 WRK-NUM         PIC 9(2)     VALUE ZEROS.               
 77 WRK-RES         PIC 9(2)     VALUE ZEROS.               
 77 WRK-CONT        PIC 9(2)     VALUE 1.                   
 PROCEDURE                       DIVISION.                  
 0001-PRINCIPAL.                                            
     ACCEPT WRK-NUM.                                        
     PERFORM 0100-IMPRIME UNTIL WRK-CONT = 11               
     STOP RUN.                                              
 0100-IMPRIME.                                              
     MULTIPLY WRK-NUM BY WRK-CONT GIVING WRK-RES.           
    DISPLAY 'NUMERO ' WRK-NUM ' X ' WRK-CONT ' = ' WRK-RES  
     ADD 1 TO WRK-CONT.                                     
