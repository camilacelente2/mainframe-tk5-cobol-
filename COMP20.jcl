 //HERC01XX JOB (PROG020),                                       
 //             'EXECUTA PROG020',                               
 //             CLASS=A,                                         
 //             MSGCLASS=H,                                      
 //             REGION=8M,TIME=1440,                             
 //             MSGLEVEL=(1,1),                                  
 //             NOTIFY=HERC01                                    
 //COMPLINK EXEC COBUCL                                          
 //COB.SYSIN DD DSN=HERC01.LIBS.COBOL(PROG020),DISP=SHR          
 //LKED.SYSLIB  DD DISP=SHR,DSN=SYS1.COBLIB                      
 //LKED.SYSLMOD DD DISP=SHR,DSN=HERC01.LIBS.LOAD(PROG020)        
