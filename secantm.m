%% It will take function and initial value as the input of function. 
% You would require to run it in command window as
% secant (@(x)(x^2 + x -9),2,3.5,0.001)
% where x^2 + x -9 is function, [2,3] initial values and 0.001 is maximum
% error tolerable.

function y = secant(f,a,b,maxerr)

c = (a*f(b) - b*f(a))/(f(b) - f(a));
disp('   Xn-1      f(Xn-1)      Xn      f(Xn)      Xn+1      f(Xn+1)');
disp([a f(a) b f(b) c f(c)]);
flag=0;
while abs(f(c)) > maxerr
    a = b;
    b = c;
    c = (a*f(b) - b*f(a))/(f(b) - f(a));
    disp([a f(a) b f(b) c f(c)]);

    flag = flag + 1;

    if(flag == 100)
        break;
    end
end

display(['Root is x = ' num2str(c)]);
y = c;