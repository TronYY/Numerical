
x0=[-1:0.25:0.25]';
y0=[-0.2209	0.3295	0.8826	1.4392	2.003	2.5645]';


A=LeastSquares(x0,y0,1)%����С���˷���϶���ʽ��ϵ��
%A=polyfit(x0,y0,1)

x=[-1.25:0.01:0.25];
y=polyval(A,x);%��Ϻ�������ֵ

plot(x0,y0,'o',x,y);
xlabel('x');
ylabel('y');
legend('raw data','LeastSquares');%��ע