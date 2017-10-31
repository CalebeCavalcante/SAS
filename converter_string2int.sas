/*
  Exemplo Site: http://support.sas.com/kb/24/590.html
*/
data new;
   orig = '12345678';
   new = input(orig, 8.);
   drop orig;
   rename new=orig;
run;

/*
  Exemplo Prático - CPF_CNPJ String to Number
  obs=10 serve para exportar apenas 10 Observações(linhas) para ajudar em um cenários de teste
  após testar, apenas retirar para rodar a base completa
*/
data WORK.REL_ATENDIMENTO_NUMERO ;
  SET DWVOIPSP.REL_ATENDIMENTO_SR_F8060216 (OBS=10);
  NEW = put(NUM_CPF_CNPJ_CLIENTE, 8.);
  drop NUM_CPF_CNPJ_CLIENTE;
  rename NEW=NUM_CPF_CNPJ_CLIENTE;
run;
