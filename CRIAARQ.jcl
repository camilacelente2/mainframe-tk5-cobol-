 //HERC01XX JOB (CRIAARQ),                                  
 //             'EXECUTA CRIAARQ',                          
 //             CLASS=A,                                    
 //             MSGCLASS=H,                                 
 //             REGION=8M,TIME=1440,                        
 //             MSGLEVEL=(1,1),                             
 //             NOTIFY=HERC01                               
 //STEP01   EXEC PGM=IEFBR14                                
 //SYSPRINT DD  SYSOUT=*                                    
 //ARQCLI   DD  DSN=HERC01.ARQCLI,                          
 //         DISP=(NEW,CATLG,DELETE),                        
 //         SPACE=(TRK,(1,1),RLSE),                         
 //         UNIT=SYSDA,                                     
 //         DCB=(LRECL=50,BLKSIZE=19050,RECFM=FB,BUFNO=2)   
