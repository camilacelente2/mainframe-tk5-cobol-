    IDENTIFICATION                  DIVISION.           
    PROGRAM-ID. PROG019.                                
   ********************                                 
   ** PROGRAMA QUE IRA CHAMAR O PROG020                 
   **********************                               
    ENVIRONMENT                     DIVISION.           
    DATA                            DIVISION.           
    WORKING-STORAGE                 SECTION.            
    77  WRK-NUMERO   PIC 9      VALUE 1.                
    77  WRK-MENSAGEM PIC X(15)  VALUE SPACES.           
    PROCEDURE                       DIVISION.           
        MOVE 1 TO WRK-NUMERO.                           
        CALL 'PROG020' USING WRK-NUMERO, WRK-MENSAGEM.  
        DISPLAY 'NUMERO ENVIADO   ' WRK-NUMERO.         
        DISPLAY 'MENSAGEM RETORNO ' WRK-MENSAGEM.       
        STOP RUN.                                       
