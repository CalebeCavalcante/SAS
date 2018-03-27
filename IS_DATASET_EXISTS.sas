/*	Exemplo de Uso*/
/*	%global isexists;*/
/*	%let isexists=;*/
/*	%IS_DATASET_EXISTS(dsname=CRCC.BASE_ANATEL_TEMP_+, returnMacroVar=isexists);*/
/*	%if &isexists %THEN*/
/*		%PUT True;*/
/*	%else*/
/*		%PUT False;*/

%MACRO IS_DATASET_EXISTS(dsname=, returnMacroVar=);

%let &returnMacroVar = %sysfunc(exist(&dsname));

%MEND;
