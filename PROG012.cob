    IDENTIFICATION                  DIVISION.           
    PROGRAM-ID. PROG012.                                
    ENVIRONMENT                     DIVISION.           
    DATA                            DIVISION.           
    WORKING-STORAGE                 SECTION.            
    77    WRK-DADOS        PIC 9(05) VALUE ZEROS.       
    77    WRK-RESUL        PIC 9(06) VALUE ZEROS.       
    PROCEDURE                       DIVISION.           
    0001-PRINCIPAL.                                     
        PERFORM 0100-INICIAR.                           
         IF WRK-DADOS > 0                               
            PERFORM 0200-PROCESSAR                      
            PERFORM 0300-FINALIZAR.                     
        STOP RUN.                                       
    0100-INICIAR.                                       
        ACCEPT WRK-DADOS.                               
    0200-PROCESSAR.                                     
         MULTIPLY WRK-DADOS BY 10 GIVING WRK-RESUL      
         DISPLAY 'RESULTADO ' WRK-RESUL.                
    0300-FINALIZAR.                                     
         DISPLAY '---- FINAL DE PROCESSAMENTO'.         
