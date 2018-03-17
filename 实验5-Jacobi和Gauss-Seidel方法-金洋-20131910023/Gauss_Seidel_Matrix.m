function X=Gauss_Seidel_Matrix(A,b,N,delta,P)
%Input  -A n*n非奇异矩阵
%       -b n*1矩阵
%       -N 最大迭代次数
%       -delta 精确度
%       -P n*1矩阵，初始值
%Output -X n*1使用Gauss-Seidel方法(矩阵形式)得到的方程组AX=b的解

%求维数
n=length(b);

%初始化X
X=zeros(n,1);

%分别得到A的下三角矩阵L,上三角矩阵U,对角线矩阵D
L=tril(A,-1);
U=triu(A,1);
D=diag(diag(A));




%k记录迭代次数
k=1;
while (k<=N)
   X=-inv(D+L)*U*P+inv(D+L)*b;
   
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




