%��ͨ��ͼ��۲�����ڴ�������
X=-3:0.01:3;
y=f(X);% fΪ��Ӧ�ĺ���
plot(X,y);%��ͼ
grid on  %�������񣬱��ڹ۲�

n=input('Please input the number of roots according to the figure of f(x):');%����ͼ��������ĸ���
% ���ݸ��ĸ���������ѭ��������ÿһ��ѭ����һ����
for i=1:n
    
    %������һ�����ڴ�������[a,b]
    fprintf('Please input the rough interval of No.%d root:[a,b]\n',i);
    a=input('a=');
    b=input('b=');
    
    k=0;% k��¼���еĲ���
    %���ַ����ĳ�����ֹ����Ϊ������������С��0.0001 �� ��������100
    while ((b-a>=0.0001) && (k<100))
        k=k+1;
        x=(a+b)/2;
        y=f(x);
        if (y==0) 
            break;
        elseif (f(a)*y<0)
            b=x;
        else 
            a=x;
        end
    
    end
    
    fprintf('x%d=%f\n',i,x);%���һ��
    k %��ʾ����
    xx(i)=x;
 
end
xx




