000001        IDENTIFICATION                  DIVISION.
000002        PROGRAM-ID. PROG002.                     
000003        ENVIRONMENT                     DIVISION.
000004        DATA                            DIVISION.
000005        WORKING-STORAGE                 SECTION. 
000006        77  WRK-NOME     PIC X(30)VALUE SPACES.  
000007        77  WRK-EMPRESA  PIC X(15)VALUE SPACES.  
000008        PROCEDURE                       DIVISION.
000009            ACCEPT WRK-NOME.                     
000010            ACCEPT WRK-EMPRESA.                  
000011            DISPLAY 'NOME... ' WRK-NOME.         
000012            DISPLAY 'EMPRESA... ' WRK-EMPRESA.   
000013            STOP RUN.                            
