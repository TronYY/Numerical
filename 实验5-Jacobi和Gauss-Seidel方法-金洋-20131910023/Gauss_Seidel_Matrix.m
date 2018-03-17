function X=Gauss_Seidel_Matrix(A,b,N,delta,P)
%Input  -A n*n���������
%       -b n*1����
%       -N ����������
%       -delta ��ȷ��
%       -P n*1���󣬳�ʼֵ
%Output -X n*1ʹ��Gauss-Seidel����(������ʽ)�õ��ķ�����AX=b�Ľ�

%��ά��
n=length(b);

%��ʼ��X
X=zeros(n,1);

%�ֱ�õ�A�������Ǿ���L,�����Ǿ���U,�Խ��߾���D
L=tril(A,-1);
U=triu(A,1);
D=diag(diag(A));




%k��¼��������
k=1;
while (k<=N)
   X=-inv(D+L)*U*P+inv(D+L)*b;
   
   if (max(abs(X-P) )<=delta)
       break;
   end
   %����ֵ������P��
   P=X;
   %����������1
   k=k+1;
end

%��ʾ��������
k




