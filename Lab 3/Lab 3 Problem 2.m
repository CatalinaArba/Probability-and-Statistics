p=input('p=')
for n=1:3:100
  k=0:n;
  prob=binopdf(k,n,p)
  plot(k,prob)
  xlim([0,101])
  ylim([0,2])

  pause(0.2)
endfor


n=input('n=')
p=input('p=')
lambda=n*p
k=0:n
p1=binopdf(k,n,p)
p2=poisspdf(k,lambda)
plot(k,p1,k,p2)
