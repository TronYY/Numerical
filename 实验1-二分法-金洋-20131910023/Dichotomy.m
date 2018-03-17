%先通过图像观察根所在大致区间
X=-3:0.01:3;
y=f(X);% f为对应的函数
plot(X,y);%作图
grid on  %加上网格，便于观察

n=input('Please input the number of roots according to the figure of f(x):');%根据图像输入根的个数
% 根据根的个数来决定循环次数，每一次循环求一个根
for i=1:n
    
    %先输入一根所在大致区间[a,b]
    fprintf('Please input the rough interval of No.%d root:[a,b]\n',i);
    a=input('a=');
    b=input('b=');
    
    k=0;% k记录进行的步数
    %二分法核心程序，终止条件为：根所在区间小于0.0001 或 步数超过100
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
    
    fprintf('x%d=%f\n',i,x);%输出一根
    k %显示步数
    xx(i)=x;
 
end
xx




