function X=GaussianElimination(A,b)
%Input  -A n*n矩阵
%       -b n*1矩阵
%Output -X AX=b的解

%求b的维数
n=length(b);
%初始化X
X=zeros(n,1);

%(A|b)的增光矩阵
Aug=[A,b];
for i=1:n-1
    %Aug(i,i)(i)=0,高斯消元法无法继续进行 结束程序
   if (Aug(i,i)==0) 
       fprintf('A(%d,%d)(%d)=0, Gaussian Elimination failed.\n',i,i,i);
       break;
   end
   
   %第i列消元
   for j=i+1:n
      m=Aug(j,i)/Aug(i,i);
      Aug(j,i:n+1)=Aug(j,i:n+1)-m*Aug(i,i:n+1);
   end
end
%消元结束后，利用上三角形方程的回代过程求解；
X=backsub(Aug(1:n,1:n),Aug(1:n,n+1));