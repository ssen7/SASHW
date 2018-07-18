*============================================================

	Assignment 1
	Author : Saurav Sengupta
	Computing ID : ss4yd

	Problem 1

*============================================================;
* The valid variable names are the following:
	1. Xyz123abc987
	2. FieldData
	3. fIeLdDaTa
	4. Data_2006
	5. Data06
	6. DataFromLastWeek
	7. Income
	8. Average_Income

Justification: All of these variable names are valid because they 
follow the rules of naming a variable.
All of these variables contain only alphanumeric characters and have
underscores only. They start with an alphabet and not a number.
They are less than 32 characters long.

The rest are not valid variable names. 
Hgt-Lbs, field-data and Data2005-2006 have a "-" in between 
which makes them invalid.
789cba321zyx and 2006Data start with a number.
LastWeek'sData has an apostrophe in the name which disqualifies it.
Average_Income_In_Adjusted_Dollars has 34 characters 
which is greater than 32.
;

*============================================================

	Problem 2

*============================================================;

* The variables "FieldData" and "fIeLdDaTa" cannot be used together. This is because
SAS is not case sensitive and therefore in effect, both those variable names are the
same. 
;

*============================================================

	Problem 3

*============================================================;
* Statement A is FALSE. Variables can only be of two types character or numeric.
There is no mixed data type in SAS.

* Statement B is TRUE. All statements must end with a semicolon.
;

*============================================================

	Problem 4

*============================================================;
* A : WORKS
	This statement will work because the "systolic" and "diastolic" are commented
	properly such that they are enclosed between "/*" and "*/".
  B : NOT WORK
	This statement will not work since the opening comment syntax is wrong.
	"*/" is incorrectly placed at the beginning of the comments and same for the "/*".
  C : NOT WORK
	This statement will not work since the comments start with "*" which has not been closed
	by a semi-colon. Therefore SAS will consider everything after "*" to be a comment.
  D : NOT WORK
  
  E : WORK
	
;

*============================================================

	Problem 5

*============================================================;

* The first error is the variable name "orig-data". It contains a "-" which makes the name
invalid.
The infile statement is the second error, where the path of the Original.txt file is not
contained inside quotes.

*============================================================

	Problem 6

*============================================================;

data comp_exp;
input x1 x2;
cards;
5  10
5  30
5  50
20 10
20 30
20 50
40 10
40 30
40 50
;
run;

*============================================================

	Problem 7

*============================================================;

filename csv_data 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataIa.csv';

data empA;
infile csv_data dsd;
retain ID name dept hire_date salary;
length name $14;
input ID name $ dept $ hire_date $ salary;
run;


filename txt_dat1 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataIb.txt';

data empB;
infile txt_dat1 dlm='$';
retain ID name dept hire_date salary;
length name $14;
input ID name $ dept $ hire_date $ salary;
run;

filename txt_dat2 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataIc.txt';

data empC;
infile txt_dat2 dlm='09'x;
retain ID name dept hire_date salary;
length name $14;
input ID name $ dept $ hire_date $ salary;
run;

*============================================================

	Problem 8

*============================================================;

filename data2 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataII.csv';

data vote;
infile data2 dsd;
input state $ party $ age;
run;

*============================================================

	Problem 9

*============================================================;

filename data3 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataIII.txt';

data bank;
infile data3;
input name $ 1-15
	  acct $ 16-20
	  balance 21-26
	  rate 27-30;
run;

*============================================================

	Problem 10

*============================================================;

filename data4 'C:\Users\Saurav\Documents\UVA-MSDS\STAT6430\SAShw\DataIV.txt';

data stocks;
infile data4;
input @1 symbol $4. @5 pdate mmddyy10. @15 pprice dollar6.0 @21 nshares 4.0 @25 sdate mmddyy10. @35 sprice dollar6.0;
format pdate mmddyy10. sdate mmddyy10.;
run;
