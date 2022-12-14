function[m1,m2]=CI3(x,alpha)
m1=(length(x)-1)*var(x)/chi2inv(1-alpha/2,length(x)-1);
m2=(length(x)-1)*var(x)/chi2inv(alpha/2,length(x)-1);
