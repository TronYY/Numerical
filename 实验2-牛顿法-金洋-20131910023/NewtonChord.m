n=1000;%����������
precision=10^-3;%����
 
%��ţ�ٸ��߷��������
x=0.5;x(2)=0.4;%��ֵ
for i=3:n
   x(i)=x(i-1)-(f(x(i-1))*(x(i-1)-x(i-2)))/(f(x(i-1))- f(x(i-2)));          
   if abs(x(i)-x(i-1))<=precision
       break
   end
end
x,i,x(i)