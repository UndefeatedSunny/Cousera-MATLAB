                       MATLAB as a Calculator

We borrowed $1000 at a 10% annual interest rate. If we did not make a payment for two years, and assuming there is no penalty for non-payment, how much do we owe now? Assign the result to a variable called debt.


CODE ->

p = 1000; %Principle
r = 10/100;   %Rate of Interest
t = 2;    %Time in Years
debt = (p)*((1+r)^t)   % Compound Interest
