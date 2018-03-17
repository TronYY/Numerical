n=1000;%最多迭代步数
precision=10^-3;%精度
 
%用牛顿法进行求解
x=0.5;%初值
for i=2:n
   x(i)=x(i-1)-f(x(i-1)) / df(x(i-1)) ;          
   if abs(x(i)-x(i-1))<=precision
       break
   end
end
x,i,x(i)