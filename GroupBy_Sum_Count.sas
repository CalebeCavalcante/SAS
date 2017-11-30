proc sort data=my_data;
  by region;
run;
data want (drop=identifer payout);
  set my_data;
  by region;
  if first.region then do;
    sum_payout=payout;
    count_identifier=1;
  end;
  else do;
    sum_payout+payout;
    count_identifier+1;
  end;
  if last.region then output;
run;
proc print;
run;
