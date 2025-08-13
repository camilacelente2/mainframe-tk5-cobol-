 //HERC01XX JOB (PROG010),                  
 //             'EXECUTA PROG010',          
 //             CLASS=A,                    
 //             MSGCLASS=H,                 
 //             REGION=8M,TIME=1440,        
 //             MSGLEVEL=(1,1),             
 //             NOTIFY=HERC01               
 //STEP01   EXEC PGM=PROG010                
 //STEPLIB  DD DSN=HERC01.LIBS.LOAD,DISP=SHR
 //SYSOUT   DD SYSOUT=*                     
