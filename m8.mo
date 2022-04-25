model m8
Real m1 (start = 7.5);
Real m2 (start = 8.5);
parameter Real p_cr = 40;
parameter Real tau1 = 30;
parameter Real p1 = 11.5;
parameter Real tau2 = 27;
parameter Real p2 = 9.5;
parameter Real n = 95;
parameter Real q = 1;
parameter Real a1 = p_cr/(tau1*tau1*p1*p1*n*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*n*q);
parameter Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*n*q);
parameter Real c1 = (p_cr-p1)/(tau1*p1);
parameter Real c2 = (p_cr-p2)/(tau2*p2);
equation
//1 случай
//der(m1)=m1-(b/c1)*m1*m2-a1/c1*m1*m1;
//2 случай
der(m1)=m1-(b/(c1+0.00016))*m1*m2-a1/c1*m1*m1;
der(m2)=c2/c1*m2-b/c1*m1*m2-a2/c1*m2*m2;
end m8;
