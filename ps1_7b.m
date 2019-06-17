% Problem Set 1, Question 7b
% Laura Gati 
% 10 June 2019


% ----
% Notes to help you guys:
% If you did the Mathematica exercise (7a), you saw that Mathematica is
% able to solve equation systems parametrically, i.e. without inserting
% numbers for a,b,c and d. Matlab also has a capability for that, but it's
% much slower than Mathematica. What Matlab is good at is solving things
% numerically. That is, given numbers for the parameters a,b,c and d,
% Matlab's function fmincon will plug in different values for P until the
% equation we input is satisfied. 

% Therefore we proceed by 
% 1) plugging in number for the parameters;
% 2) defining the objective function; 
% 3) specifying what value Matlab should plug in first (p0);
% 4) setting the bounds for what values make sense for P (lb and ub)
% 5) calling fmincon to minimize the objective function by repeatedly
% plugging in new values for P, starting at p0. 

% Evaluate the code: Editor > Run.
% ----
clearvars
clc

% Define parameters
a = 1; b = 20; c = 3; d= 0;

% Define the objective function
objective = @(p) abs((a+c)*p + d-b);
% Why did I put the objective function in absolute value? Ask me in class!

%Compute the objective function one time with any old value
some_random_P = 1;
loss = objective(some_random_P);

% Initial P
p0 = 1;

% Set lower and upper bounds for pstar:
ub = 1000; % I conjecture that the price will be below this
lb = 0.01; % can't have negative prices

% Call fmincon
pstar = fmincon(objective, p0, [],[],[],[],lb,ub)

% Finally, redefine the variable your_name, and print the Command window
% output by right-clicking on the Command Window and selecting Print.
your_name = 'Laura Gati' % don't put a semicolon - that suppresses output
pwd
datestr(today,'dd-mm-yyyy')