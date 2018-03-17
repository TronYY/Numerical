function X=Jacobi(A,b,N,delta,P)
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

%k��¼��������
k=1;
while (k<=N)
   for i=1:n
      %�����µ�ֵ
      X(i)=( b(i)- A(i,[1:i-1,i+1:n]) * P([1:i-1,i+1:n])  ) / A(i,i); 
   end
   
   %���龫��������������Ҫ���˳�ѭ��
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



