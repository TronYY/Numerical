n=1000;%最多迭代步数
precision=10^-3;%精度
 
%用牛顿割线法进行求解
x=0.5;x(2)=0.4;%初值
for i=3:n
   x(i)=x(i-1)-(f(x(i-1))*(x(i-1)-x(i-2)))/(f(x(i-1))- f(x(i-2)));          
   if abs(x(i)-x(i-1))<=precision
       break
   end
end
x,i,x(i)