function X=Gauss_Seidel(A,b,N,delta,P)
%Input  -A n*n非奇异矩阵
%       -b n*1矩阵
%       -N 最大迭代次数
%       -delta 精确度
%       -P n*1矩阵，初始值
%Output -X n*1使用Gauss-Seidel(分量形式)方法得到的方程组AX=b的解

%求维数
n=length(b);

%初始化X
X=zeros(n,1);

%k记录迭代次数
k=1;
while (k<=N)
   for i=1:n
      %计算新的值,注意与Jacobi的X(i)=( b(i)- A(i,[1:i-1,i+1:n]) * P([1:i-1,i+1:n])
      %) / A(i,i)做比较
      X(i)=( b(i)- A(i,1:i-1) * X(1:i-1) -  A(i,i+1:n) * P(i+1:n) ) / A(i,i); 
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

%显示迭代次数
k



