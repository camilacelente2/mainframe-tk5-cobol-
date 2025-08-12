 IDENTIFICATION                  DIVISION.               
 PROGRAM-ID. PROG016.                                    
 ENVIRONMENT                     DIVISION.               
 CONFIGURATION                   SECTION.                
 SPECIAL-NAMES.                                          
     DECIMAL-POINT IS COMMA.                             
 INPUT-OUTPUT                    SECTION.                
 FILE-CONTROL.                                           
     SELECT CLIENTES ASSIGN TO UT-S-ARQCLI.              
 DATA                           DIVISION.                
 FILE                            SECTION.                
 FD   CLIENTES                                           
      LABEL RECORDS ARE STANDARD                         
      RECORD CONTAINS 50 CHARACTERS                      
      BLOCK  CONTAINS 0 RECORDS                          
      DATA   RECORD IS CLIENTES.                         
 01   REG-CLIENTES.                                      
      05 REG-CODIGO    PIC 9(05).                        
      05 REG-NOME      PIC X(20).                        
      05 REG-ENDERECO  PIC X(25).                        
 WORKING-STORAGE                   SECTION.              
 01   WRK-CLIENTES.                                      
      05 WRK-CODIGO    PIC 9(05).                        
      05 WRK-NOME      PIC X(20).                        
      05 WRK-ENDERECO  PIC X(25).                        
 PROCEDURE                        DIVISION.              
 001-PRINCIPAL.                                          
     PERFORM 0100-INICIAR.                               
     PERFORM 0200-PROCESSAR.                             
     PERFORM 0300-FINALIZAR.                             
     STOP RUN.                                           
*------------------------------------------------------  
 0100-INICIAR.                                           
     ACCEPT WRK-CLIENTES.                                
     OPEN OUTPUT CLIENTES.                               
*------------------------------------------------------  
 0200-PROCESSAR.                                         
      MOVE WRK-CLIENTES TO REG-CLIENTES.                 
      WRITE REG-CLIENTES.                                
             DISPLAY 'CODIGO...'  WRK-CODIGO              
             DISPLAY 'NOME.....'  WRK-NOME                
             DISPLAY 'ENDERECO..' WRK-ENDERECO            
             DISPLAY '------------------------------'.    
  *-----------------------------------------------------  
   0300-FINALIZAR.                                        
        CLOSE CLIENTES.                                   
