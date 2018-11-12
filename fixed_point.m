function [p,k,err,P] = fixed_point(g,p0,tol,max1)
if nargin<4, max1=1000; end
if nargin<3, tol=1e03; end
P(1)= p0;
for k=2:max1
 P(k)=feval(g,P(k-1));
 err=abs(P(k)-P(k-1));
 relerr=err/(abs(P(k))+eps);
 p=P(k);
 if (err<tol) | (relerr<tol),break;end
end
if k == max1
 disp('maximum number of iterations exceeded')
end
P=P';