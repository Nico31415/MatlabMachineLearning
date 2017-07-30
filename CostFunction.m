function [jVal,gradient] = CostFunction(theta)
jVal = (theta(1)-5)^2+(theta(2)-5)^2;
gradient = zeros(2, 1);
gradient(1) = 2*(theta(1)-5);
gradient(2) = 2*(theta(2)-5);
end

end


options = optimset('GrandObj', 'on', 'MaxIter', '100');
intialTheta = zeros(2,1);
fminunc(@CostFunction, initialTheta, options)
