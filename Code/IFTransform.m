function Y=IFTransform(input)

 size=length(input);
 l=log2(size);
 p=ceil(l); 
 Y=input; 
 N = 2^p;
 %N = size;
 N2=N/2; 
 YY = pi*1i/N2; 
 WW = exp(YY);  
 JJ = 0 : N2-1;  
 W=WW.^JJ;
 for L = 1 : p-1
    u=Y(:,1:N2);
    %disp(u);
    v=Y(:,N2+1:N);
    %disp(v);
    t=u+v;
    %disp(t);
    S=W.*(u-v);
    Y=[t ; S];
    %disp(Y);
    U=W(:,1:2:N2);
    W=[U ;U];
    N=N2;
    N2=N2/2;
 end;
 u=Y(:,1);
 v=Y(:,2);
 Y=[u+v;u-v];
 Y;