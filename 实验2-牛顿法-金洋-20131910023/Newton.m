n=1000;%����������
precision=10^-3;%����
 
%��ţ�ٷ��������
x=0.5;%��ֵ
for i=2:n
   x(i)=x(i-1)-f(x(i-1)) / df(x(i-1)) ;          
   if abs(x(i)-x(i-1))<=precision
       break
   end
end
x,i,x(i)