 IDENTIFICATION                  DIVISION.             
 PROGRAM-ID. PROG014.                                  
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
 WORKING-STORAGE                  SECTION.             
 77  FS-CLIENTES        PIC X VALUE 'N'.               
 77  WRK-LIDOS          PIC 9(05) VALUE 0.             
 PROCEDURE                        DIVISION.            
 001-PRINCIPAL.                                        
     PERFORM 0100-INICIAR.                             
     PERFORM 0200-PROCESSAR UNTIL FS-CLIENTES = 'F'.   
     PERFORM 0300-FINALIZAR.                           
     STOP RUN.                                         
*------------------------------------------------------
 0100-INICIAR.                                         
     OPEN INPUT CLIENTES.                              
      READ CLIENTES AT END                             
                    MOVE 'F' TO FS-CLIENTES.           
        IF FS-CLIENTES = 'F'                           
           DISPLAY 'NENHUM REGISTRO NO ARQUIVO'.       
*------------------------------------------------------
 0200-PROCESSAR.                                       
           DISPLAY 'CODIGO...'  REG-CODIGO             
              DISPLAY 'NOME.....'  REG-NOME                
              DISPLAY 'ENDERECO..' REG-ENDERECO.           
              DISPLAY '------------------------------'.    
              ADD 1 TO WRK-LIDOS.                          
         READ CLIENTES AT END                              
                       MOVE 'F' TO FS-CLIENTES.            
   *------------------------------------------------------ 
    0300-FINALIZAR.                                        
         CLOSE CLIENTES.                                   
         DISPLAY 'REGISTROS LIDOS...' WRK-LIDOS.           
