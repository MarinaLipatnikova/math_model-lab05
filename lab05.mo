model lab05
parameter Real a = 0.79;
parameter Real b = 0.77;
parameter Real c = 0.078;
parameter Real d = 0.076;


//Real x(start=9);
//Real y(start=18);
Real x(start=b/d);//стационарные
Real y(start=a/c);//стационарные
equation
der (x) = -a*x+c*x*y;
der (y) = b*y-d*x*y;
end lab05;
