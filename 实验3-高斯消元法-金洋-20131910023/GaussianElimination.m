function X=GaussianElimination(A,b)
%Input  -A n*n����
%       -b n*1����
%Output -X AX=b�Ľ�

%��b��ά��
n=length(b);
%��ʼ��X
X=zeros(n,1);

%(A|b)���������
Aug=[A,b];
for i=1:n-1
    %Aug(i,i)(i)=0,��˹��Ԫ���޷��������� ��������
   if (Aug(i,i)==0) 
       fprintf('A(%d,%d)(%d)=0, Gaussian Elimination failed.\n',i,i,i);
       break;
   end
   
   %��i����Ԫ
   for j=i+1:n
      m=Aug(j,i)/Aug(i,i);
      Aug(j,i:n+1)=Aug(j,i:n+1)-m*Aug(i,i:n+1);
   end
end
%��Ԫ�����������������η��̵Ļش�������⣻
X=backsub(Aug(1:n,1:n),Aug(1:n,n+1));