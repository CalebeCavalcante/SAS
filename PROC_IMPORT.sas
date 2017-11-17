/*
*  CRIAR TABELA
*/
DATA WORK.PESQUISA_2;
    LENGTH
        id                 8
        telefone           8
        onda               8
        num_latitude_top_cgi   8
        num_longitude_top_cgi   8 ;
    FORMAT
        id               BEST12.
        telefone         BEST12.
        onda             DATE9.
        num_latitude_top_cgi BEST12.
        num_longitude_top_cgi BEST12. ;
    INFORMAT
        id               BEST12.
        telefone         BEST12.
        onda             DATE9.
        num_latitude_top_cgi BEST12.
        num_longitude_top_cgi BEST12. ;
RUN;

/*
*  IMPORTAR DADOS
*/
proc import out= WORK.PESQUISA_2
    datafile = '/saswork/pesquisa_jul17ago17_latlong.xlsx'
    dbms = xlsx replace;
    sheet = 'base';
    getnames = yes;
    run;
