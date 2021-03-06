Sets  i    /1*2/
      j    /1*3/
;

Variables
           x(i)
           y(j)
           objvar;

Equations  e1
           e2
           e3
           e4;

e1.. power(x('1'),2) + power(x('2'),4) - y('1') =E= 0;
e2.. power(2-x('1'),2) + power(2-x('2'),2) - y('2') =E= 0;
e3.. 2*exp(x('2') - x('1')) - y('3') =E= 0;
e4.. smax(j,y(j)) - objvar =E= 0;

Model m / all /;
m.limrow=0; m.limcol=0;

Solve m using DNLP minimizing objvar;