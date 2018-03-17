function [X,k]=SOR_Matrix(A,b,w,P,N,delta)
%Input  -A n*n���������
%       -b n*1����
%       -w �ɳ�����
%       -P n*1���󣬳�ʼֵ
%       -N ����������
%       -delta ��ȷ��
%Output -X n*1ʹ��SOR������ʽ�����õ��ķ�����AX=b�Ľ�
%       -k ��������

if (w<=0 || w>=2)
    error('�ɳ�����w���Ϸ�.')
end

%��ά��
n=length(b);

%��ʼ��X
X=zeros(n,1);

%�ֱ�õ�A�������Ǿ���L,�����Ǿ���U,�Խ��߾���D
L=tril(A,-1);
U=triu(A,1);
D=diag(diag(A));

%��������
Hw=inv(D+w*L)*((1-w)*D-w*U);


%k��¼��������
k=1;
while (k<=N)
    %�����µĵ���ֵ
    X=Hw*P+w*inv(D+w*L)*b;
   
    if (max(abs(X-P) )<=delta)
       break;
   end
   %����ֵ������P��
   P=X;
   %����������1
   k=k+1;
end





