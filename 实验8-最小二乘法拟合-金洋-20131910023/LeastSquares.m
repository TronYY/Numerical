function A=LeastSquares(x,y,n)
%Input  -x m*1����,��֪��ĺ�����
%       -y m*1����,��֪���������
%       -n  ��С���˷���϶���ʽ�Ĵ���

%Output -A  1*(n+1)���󣬶���ʽ��ϵ������ A=(an,��,a0);

%����֪�����
m=length(x);

%��ʼ��A,X
A=zeros(n+1,1);
X=zeros(m,n+1);
X(:,1)=1;

for i=1:n
   X(:,i+1)=X(:,i).*x; 
end

B=X'*X;
C=X'*y;

%��ⷨ����X'XA=X'y
A=B\C;
A=A(n+1:-1:1)';



