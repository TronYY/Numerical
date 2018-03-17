function X=Thomas(a,b,c,f)
%Input  f&以A,B,C为三对角线的系数矩阵
%       -a 1*(n-1)矩阵
%       -b 1*n矩阵
%       -c 1*(n-1)矩阵
%       -f 1*n矩阵
%Output -X 方程组的解

%求维数
n=length(f);

%初始化X
X=zeros(1,n);

%计算α，β，γ
%为节省内存，γ存在A中,β与C共用,α可由A,C中数据导出
%即α，β，γ分别存于b,c,a中
a(2:n)=a;%a的下标从2至n
c(1)=c(1)/b(1);
for i=2:n-1
   b(i)=b(i)-a(i)*c(i-1);
   c(i)=c(i)/b(i);
end
b(n)=b(n)-a(n)*c(n-1);

%计算Ly=f，为节省内存，直接将y及下一步要求的x存于X中，实际上f也可以存于X中，为表达清晰此处仍将f单独存放
X(1)=f(1)/b(1);
for i=2:n
   X(i)=(f(i)-a(i)*X(i-1))/b(i); 
end

%计算Ux=Y；
for i=n-1:-1:1
   X(i)=X(i)-c(i)*X(i+1); 
end

