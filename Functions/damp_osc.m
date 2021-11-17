function [X,Wn]=damp_osc(m,b,k,xo,t)
% calculates time series of a damp oscilator and gives natural frequency
% [X,Wn]=damp_osc(m,b,k,xo,t)
Wn=sqrt((k./m)-(b.^2/4*m.^2))
X=xo*exp(-b.*t./2.*m)*cos(Wn*t)
end





