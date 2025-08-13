 //HERC01XX JOB (PROG016),                       
 //             'EXECUTA PROG016',               
 //             CLASS=A,                         
 //             MSGCLASS=H,                      
 //             REGION=8M,TIME=1440,             
 //             MSGLEVEL=(1,1),                  
 //             NOTIFY=HERC01                    
 //STEP01   EXEC PGM=PROG016                     
 //STEPLIB  DD DSN=HERC01.LIBS.LOAD,DISP=SHR     
 //SYSOUT   DD SYSOUT=*                          
 //ARQCLI   DD DSN=HERC01.ARQCLI,DISP=MOD        
 //SYSIN    DD *                                 
 12358OSMAR SANTOS    RUA DO GAROTINHO           
