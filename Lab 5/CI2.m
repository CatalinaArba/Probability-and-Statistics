function [m1,m2]=CI2(x,alpha)
m1=mean(x)-std(x)/sqrt(length(x))*tinv(1-alpha/2,length(x)-1);
m2=mean(x)+std(x)/sqrt(length(x))*tinv(1-alpha/2,length(x)-1);
