/*
  outobs=10 serve para exportar apenas 10 Observações(linhas) para ajudar em um cenários de teste
  após testar, apenas retirar para rodar a base completa
*/
data new outobs=10;
   orig = '12345678';
   new = input(orig, 8.);
   drop orig;
   rename new=orig;
run;
