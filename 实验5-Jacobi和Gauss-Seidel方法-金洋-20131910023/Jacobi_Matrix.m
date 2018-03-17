function X=Jacobi_Matrix(A,b,N,delta,P)
%Input  -A n*n���������
%       -b n*1����
%       -N ����������
%       -delta ��ȷ��
%       -P n*1���󣬳�ʼֵ
%Output -X n*1ʹ��Jacobi����(������ʽ)�õ��ķ�����AX=b�Ľ�

%��ά��
n=length(b);

%��ʼ��X
X=zeros(n,1);

%�ֱ�õ�A�Խ��߾���D,D�������INVD,��λ����I
D=diag(diag(A));INVD=inv(D);
I=eye(n);



%k��¼��������
k=1;
while (k<=N)
   X=(I-INVD*A)*P+INVD*b;
   
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




