%macro loop(vlist);

%let nwords=%sysfunc(countw(&vlist));

%do i=1 %to &nwords;
	%put %scan(&vlist, &i);
%end;

%mend;

%let list = A B C D;
%loop(&list);
