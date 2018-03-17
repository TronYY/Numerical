function [X,k]=SOR_Matrix(A,b,w,P,N,delta)
%Input  -A n*n非奇异矩阵
%       -b n*1矩阵
%       -w 松弛因子
%       -P n*1矩阵，初始值
%       -N 最大迭代次数
%       -delta 精确度
%Output -X n*1使用SOR矩阵形式方法得到的方程组AX=b的解
%       -k 迭代次数

if (w<=0 || w>=2)
    error('松弛因子w不合法.')
end

%求维数
n=length(b);

%初始化X
X=zeros(n,1);

%分别得到A的下三角矩阵L,上三角矩阵U,对角线矩阵D
L=tril(A,-1);
U=triu(A,1);
D=diag(diag(A));

%迭代矩阵
Hw=inv(D+w*L)*((1-w)*D-w*U);


%k记录迭代次数
k=1;
while (k<=N)
    %计算新的迭代值
    X=Hw*P+w*inv(D+w*L)*b;
   
    if (max(abs(X-P) )<=delta)
       break;
   end
   %将新值保存在P中
   P=X;
   %迭代次数加1
   k=k+1;
end





