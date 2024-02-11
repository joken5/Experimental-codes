function newx=HCM_f(x)
k=9;
% newx(1,1)=mod((10^12.*power(x(1),2)+x(2)-x(3)),1);
% newx(2,1)=mod((x(1)*x(3)-10.^13.*x(2)),1);
% newx(3,1)=mod((x(1)-x(2)+power(x(3),2)),1);

% newx(1,1)=mod(x(4)*(power(x(1),2)+x(2)-x(3)),1);
% newx(2,1)=mod(x(4)*(x(1)*x(3)-10000000.*x(2)),1);
% newx(3,1)=mod(x(4)*(x(1)-x(2)+power(x(3),2)),1);



newx(1,1)=mod((2^(k+x(1)))*x(4)*(power(x(2),2)+x(3)),1);
newx(2,1)=mod((3^(k+x(2)))*x(4)*(power(x(3),2)+x(1)),1);
newx(3,1)=mod((5^(k+x(3)))*x(4)*(power(x(1),2)+x(2)),1);
newx(4,1)=x(4);