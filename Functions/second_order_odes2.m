function [output]=second_order_odes2(tn,sn)
X1=sn(1);
X2=sn(2);
output=zeros(2,1);
output(1)=X2;
output(2)=cos(X1);
end