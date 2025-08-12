   IDENTIFICATION                  DIVISION.                       
   PROGRAM-ID. PROG018.                                            
  *=====================================                           
  *-- PROGRAMA PARA TRADUZIR O MES POR EXTENSO                     
  *=====================================                           
   ENVIRONMENT                     DIVISION.                       
   DATA                            DIVISION.                       
   WORKING-STORAGE                 SECTION.                        
       01 WRK-DATA.                                                
           05 WRK-DATADIA PIC 9(2) VALUE ZEROS.                    
           05 FILLER      PIC X.                                   
           05 WRK-DATAMES PIC 9(2) VALUE ZEROS.                    
           05 FILLER      PIC X.                                   
           05 WRK-DATAANO PIC 9(4) VALUE ZEROS.                    
       01 WRK-MES.                                                 
           05 WRK-MES-EXT PIC X(09) OCCURS 12.                     
      PROCEDURE                    DIVISION.                       
          ACCEPT WRK-DATA.                                         
           DISPLAY  'DIA INFORMADO... 'WRK-DATADIA.                
           DISPLAY  'MES INFORMADO... 'WRK-DATAMES.                
           DISPLAY  'ANO INFORMADO... 'WRK-DATAANO.                
            PERFORM 1000-MONTAMES.                                 
             DISPLAY WRK-DATADIA ' DE ' WRK-MES-EXT (WRK-DATAMES)  
                                 ' DE ' WRK-DATAANO.               
          STOP RUN.                                                
      1000-MONTAMES.                                               
           MOVE 'JANEIRO   ' TO WRK-MES-EXT (1).                   
           MOVE 'FEVEREIRO ' TO WRK-MES-EXT (2).                   
           MOVE 'MARCO     ' TO WRK-MES-EXT (3).                   
           MOVE 'ABRIL     ' TO WRK-MES-EXT (4).                   
           MOVE 'MAIO      ' TO WRK-MES-EXT (5).                   
           MOVE 'JUNHO     ' TO WRK-MES-EXT (6).                   
           MOVE 'JULHO     ' TO WRK-MES-EXT (7).                   
           MOVE 'AGOSTO    ' TO WRK-MES-EXT (8).                   
           MOVE 'SETEMBRO  ' TO WRK-MES-EXT (9).                   
           MOVE 'OUTUBRO   ' TO WRK-MES-EXT (10).                  
           MOVE 'NOVEMBRO  ' TO WRK-MES-EXT (11).                  
           MOVE 'DEZEMBRO  ' TO WRK-MES-EXT (12).                  
