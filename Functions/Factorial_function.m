% 5! = 5 * 4!
% 5! = 5 * 4 * 3!
% 5! = 5 * 4 * 3 * 2!
% 5! = 5 * 4 * 3 * 2 * 1

function fact = Factorial_function(n)
   if n == 0 || n == 1
       fact = 1; 
   else
        fact = n * Factorial_function(n-1);
   end