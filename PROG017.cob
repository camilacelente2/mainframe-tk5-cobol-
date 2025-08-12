  IDENTIFICATION                  DIVISION.                 
  PROGRAM-ID. PROG017.                                      
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
      01  REG-CLIENTES COPY BOOKCLI.                        
  WORKING-STORAGE                   SECTION.                
  77  FS-CLIENTES        PIC X VALUE 'N'.                   
  77  WRK-CODIGO         PIC 9(05) VALUE ZEROS.             
  77  WRK-ACHOU          PIC 9 VALUE 0.                     
  PROCEDURE                        DIVISION.                
  001-PRINCIPAL.                                            
      PERFORM 0100-INICIAR.                                 
      PERFORM 0200-PROCESSAR UNTIL FS-CLIENTES = 'F'.       
      PERFORM 0300-FINALIZAR.                               
      STOP RUN.                                             
 *------------------------------------------------------    
  0100-INICIAR.                                             
      ACCEPT WRK-CODIGO.                                    
      OPEN INPUT CLIENTES.                                  
       READ CLIENTES AT END                                 
                     MOVE 'F' TO FS-CLIENTES.               
         IF FS-CLIENTES = 'F'                               
            DISPLAY 'NENHUM REGISTRO NO ARQUIVO'.           
 *------------------------------------------------------    
  0200-PROCESSAR.                                           
           IF REG-CODIGO = WRK-CODIGO                       
            DISPLAY 'CODIGO...'  REG-CODIGO                 
      ----1----+----2----+----3----+----4----+----5----+----6--
            DISPLAY 'NOME.....'  REG-NOME                
            DISPLAY 'ENDERECO..' REG-ENDERECO            
            DISPLAY '------------------------------'     
              MOVE 1 TO WRK-ACHOU.                       
       READ CLIENTES AT END                              
                     MOVE 'F' TO FS-CLIENTES.            
 *-----------------------------------------------------  
  0300-FINALIZAR.                                        
       CLOSE CLIENTES.                                   
        IF WRK-ACHOU = 0                                 
          DISPLAY 'NENHUM REGISTRO CODIGO.. ' WRK-CODIGO 
         ELSE                                            
           DISPLAY 'REGISTRO ENCONTRADO'.                
