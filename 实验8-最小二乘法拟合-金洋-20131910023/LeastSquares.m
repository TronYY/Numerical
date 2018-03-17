function A=LeastSquares(x,y,n)
%Input  -x m*1矩阵,已知点的横坐标
%       -y m*1矩阵,已知点的纵坐标
%       -n  最小二乘法拟合多项式的次数

%Output -A  1*(n+1)矩阵，多项式的系数矩阵 A=(an,…,a0);

%求已知点个数
m=length(x);

%初始化A,X
A=zeros(n+1,1);
X=zeros(m,n+1);
X(:,1)=1;

for i=1:n
   X(:,i+1)=X(:,i).*x; 
end

B=X'*X;
C=X'*y;

%求解法方程X'XA=X'y
A=B\C;
A=A(n+1:-1:1)';



