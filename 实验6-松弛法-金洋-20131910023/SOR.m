function [X,k]=SOR(A,b,w,P,N,delta)
%Input  -A n*n���������
%       -b n*1����
%       -w �ɳ�����
%       -P n*1���󣬳�ʼֵ
%       -N ����������
%       -delta ��ȷ��
%Output -X n*1ʹ��SOR�����õ��ķ�����AX=b�Ľ�
%       -k ��������

if (w<=0 || w>=2)
    error('�ɳ�����w���Ϸ�.')
end

%��ά��
n=length(b);

%��ʼ��X
X=zeros(n,1);

%k��¼��������
k=1;
while (k<=N)
   for i=1:n
       
      %�����µĵ���ֵ
      
      X(i)= X(i)+w*( b(i)-A(i,1:i-1)* X(1:i-1)-  A(i,i:n) * P(i:n) )/A(i,i);    
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





