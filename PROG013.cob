 IDENTIFICATION                  DIVISION.        
 PROGRAM-ID. PROG013.                             
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
 PROCEDURE                        DIVISION.       
     OPEN INPUT CLIENTES.                         
      READ CLIENTES AT END                        
                    MOVE 'S' TO FS-CLIENTES.      
        IF FS-CLIENTES = 'S'                      
           DISPLAY 'NENHUM REGISTRO NO ARQUIVO'   
        ELSE                                      
           DISPLAY 'CODIGO...'  REG-CODIGO        
           DISPLAY 'NOME.....'  REG-NOME          
           DISPLAY 'ENDERECO..' REG-ENDERECO.     
      CLOSE CLIENTES.                             
     STOP RUN.                                    
