function [m1,m2]=CI(x,sigma,alpha)
m1=mean(x)-sigma/sqrt(length(x))*norminv(1-alpha/2);
m2=mean(x)+sigma/sqrt(length(x))*norminv(1-alpha/2);
