
x0=[-1:0.25:0.25]';
y0=[-0.2209	0.3295	0.8826	1.4392	2.003	2.5645]';


A=LeastSquares(x0,y0,1)%用最小二乘法拟合多项式的系数
%A=polyfit(x0,y0,1)

x=[-1.25:0.01:0.25];
y=polyval(A,x);%拟合函数函数值

plot(x0,y0,'o',x,y);
xlabel('x');
ylabel('y');
legend('raw data','LeastSquares');%标注