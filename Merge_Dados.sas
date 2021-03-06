proc sort data=WORK.PROTOCOLOS_042017_SOLICITACAO;
by PROTOCOLO; 
run;

%_eg_conditional_dropds(WORK.TB_IN_ATUAL_NO_ANTIGO);
data WORK.TB_IN_ATUAL_NO_ANTIGO;
MERGE WORK.protocolos_042017_solicitacao( IN=A ) 
WORK.TB_REL_ATENDIMENTO_ABRIL( IN=B );
BY PROTOCOLO;
IF A=0 & B=1;
IF NOM_LOGIN_CRIADOR_SR = 'SADMIN' THEN DELETE;
IF ~(DSC_MOTIVO_1 = 'SOLICITACAO') THEN DELETE;
RUN;
