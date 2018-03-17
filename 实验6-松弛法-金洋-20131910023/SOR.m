function [X,k]=SOR(A,b,w,P,N,delta)
%Input  -A n*n非奇异矩阵
%       -b n*1矩阵
%       -w 松弛因子
%       -P n*1矩阵，初始值
%       -N 最大迭代次数
%       -delta 精确度
%Output -X n*1使用SOR方法得到的方程组AX=b的解
%       -k 迭代次数

if (w<=0 || w>=2)
    error('松弛因子w不合法.')
end

%求维数
n=length(b);

%初始化X
X=zeros(n,1);

%k记录迭代次数
k=1;
while (k<=N)
   for i=1:n
       
      %计算新的迭代值
      
      X(i)= X(i)+w*( b(i)-A(i,1:i-1)* X(1:i-1)-  A(i,i:n) * P(i:n) )/A(i,i);    
   end
   
   %检验精读，若精读符合要求，退出循环
   if (max(abs(X-P) )<=delta)
       break;
   end
   %将新值保存在P中
   P=X;
   %迭代次数加1
   k=k+1;
end





