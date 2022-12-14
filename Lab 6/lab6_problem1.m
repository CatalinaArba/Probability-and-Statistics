#Lab6
x=[7 7 4 5 9 9 ...
   4 12 8 1 8 7 ...
   3 13 2 1 17 7 ...
   12 5 6 2 1 13 ...
   14 10 2 4 9 11 ...
   3 5 12 6 10 7] ;

n=length(x);
sigma=5;
alpha=0.05;
m0=9;

[h1, p1, ci1, zstat1] = ztest(x, m0, sigma, 'alpha',alpha,'tail','left')
if h1==1
    fprintf('The null hypothesis is rejected \n')
else
    fprintf('The null hypothesis is accepted\n ')
end

#a)
fprintf('The value of the statistic =%4.4f\n',zstat1)
fprintf('The P value=%4.4f\n',p1)
RR=[-inf,norminv(alpha)];
fprintf('The rejaction region is (%1.1f,%1.1f)\n',RR)

#b)
[h2, p2, ci2, zstat2] = ttest(x, m0, 'alpha',alpha,'tail','left')
RR=[tinv(1-alpha,n-1),inf]
if h2==1
    fprintf('The null hypothesis is rejected \n')
else
    fprintf('The null hypothesis is accepted\n ')
end
fprintf('The value of the statistic =%4.4f\n',zstat2.sd)
fprintf('The P value=%4.4f\n',p2)
fprintf('The rejaction region is (%1.1f,%1.1f)\n',RR)

