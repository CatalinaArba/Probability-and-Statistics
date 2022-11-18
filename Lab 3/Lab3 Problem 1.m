alpha =input('alpha=')
beta=input('beta=')

option=input('option=','s')
switch option

case 'normal'
mn=input('mean=')
sigma=input('std=')
p1 = normcdf(0, mn, sigma)
p2=1-p1
p3=normcdf(1)-normcdf(-1)
p4=1-p3

p5=norminv(alpha,mn,sigma)
norminv(p1,mn,sigma)
fprintf('%1.4f',p5)

norminv(1-beta,mn,sigma)

case 'student'
n=input('n=')
p1 = tcdf(0, n)
p2=1-p1
p3=normcdf(1)-normcdf(-1)
p4=1-p3


case 'fisher'
m=input('m=')
n=input('n=')
p1=fcdf(0,m,n)
p2=1-p1
p3=normcdf(1)-normcdf(-1)
p4=1-p3


otherwise
fprintf('Wrong')
endswitch
