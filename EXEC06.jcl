 //HERC01XX JOB (PROG006),                   
 //             'EXECUTA PROG006',           
 //             CLASS=A,                     
 //             MSGCLASS=H,                  
 //             REGION=8M,TIME=1440,         
 //             MSGLEVEL=(1,1),              
 //             NOTIFY=HERC01                
 //STEP01   EXEC PGM=PROG006                 
 //STEPLIB  DD DSN=HERC01.LIBS.LOAD,DISP=SHR 
 //SYSOUT   DD SYSOUT=*                      
 //SYSIN    DD *                             
 1000                                        
 9800                                        
