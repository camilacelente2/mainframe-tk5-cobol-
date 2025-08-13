 //HERC01XX JOB (PROG009),                  
 //             'EXECUTA PROG009',          
 //             CLASS=A,                    
 //             MSGCLASS=H,                 
 //             REGION=8M,TIME=1440,        
 //             MSGLEVEL=(1,1),             
 //             NOTIFY=HERC01               
 //STEP01   EXEC PGM=PROG009                
 //STEPLIB  DD DSN=HERC01.LIBS.LOAD,DISP=SHR
 //SYSOUT   DD SYSOUT=*                     
 //SYSIN    DD *                            
