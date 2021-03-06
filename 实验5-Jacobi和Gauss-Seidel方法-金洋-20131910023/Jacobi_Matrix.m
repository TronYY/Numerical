function X=Jacobi_Matrix(A,b,N,delta,P)
%Input  -A n*n非奇异矩阵
%       -b n*1矩阵
%       -N 最大迭代次数
%       -delta 精确度
%       -P n*1矩阵，初始值
%Output -X n*1使用Jacobi方法(矩阵形式)得到的方程组AX=b的解

%求维数
n=length(b);

%初始化X
X=zeros(n,1);

%分别得到A对角线矩阵D,D的逆矩阵INVD,单位矩阵I
D=diag(diag(A));INVD=inv(D);
I=eye(n);



%k记录迭代次数
k=1;
while (k<=N)
   X=(I-INVD*A)*P+INVD*b;
   
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




