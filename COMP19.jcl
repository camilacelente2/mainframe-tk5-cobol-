 //HERC01XX JOB (PROG019),                                  
 //             'EXECUTA PROG019',                          
 //             CLASS=A,                                    
 //             MSGCLASS=H,                                 
 //             REGION=8M,TIME=1440,                        
 //             MSGLEVEL=(1,1),                             
 //             NOTIFY=HERC01                               
 //COMPCOB EXEC COBUCLG,                                    
 //        PARM.COB='FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'
 //COB.SYSPUNCH DD DUMMY                                    
 //COB.SYSIN    DD DSN=HERC01.LIBS.COBOL(PROG019),DISP=SHR  
 //LKED.SYSLIB  DD DSN=HERC01.LIBS.LOAD,DISP=SHR            
 //LKED.SYSLMOD DD DSN=HERC01.LIBS.LOAD,DISP=SHR            
 //GO.SYSOUT   DD SYSOUT=*                                  
