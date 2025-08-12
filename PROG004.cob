 IDENTIFICATION                  DIVISION.       
 PROGRAM-ID. PROG004.                            
 ENVIRONMENT                     DIVISION.       
 DATA                            DIVISION.       
 WORKING-STORAGE                 SECTION.        
 01  WRK-CLIENTE.                                
     05 WRK-NOME PIC X(20).                      
     05 WRK-PROF PIC X(15).                      
 PROCEDURE                       DIVISION.       
     ACCEPT WRK-CLIENTE.                         
          DISPLAY  'NOME... '  WRK-NOME.         
          DISPLAY  'PROFISSAO...  '  WRK-PROF.   
     STOP RUN.                                   
