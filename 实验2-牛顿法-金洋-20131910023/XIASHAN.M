function [gen,time,r]=xiashan(f,a,TOL1,TOL2,rmin,N)
%TOL2为残量精确度，TOL1为根的误差限
df=diff(sym(f));
x1=a;
time=0;
r=1; %r为下山因子
if abs(subs(f,x1))<TOL2
    gen=x1; return 
end
while time<N
    time=time+1;
    r=1;
    df1=subs(df,x1);
    fx=subs(f,x1);
    if df1==0
        error
    end
    gen=x1-r*fx/df1;
    if abs(gen-x1)<TOL1
       gen; return 
    end
    f1=subs(f,gen);
    if abs(f1)<TOL2
        gen;return 
    end
    x1=gen;
    while (abs(f1)>abs(fx))&&(r>rmin)
        r=r/2;
        gen=x1-r*(subs(f,x1)/subs(df,x1));
        x1=gen;
    end
    if r<rmin
        error
    end
end