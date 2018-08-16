function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

thetaNoFirstRow = theta(2:end, :);
regTerm = (lambda / (2 * m)) .* sum(thetaNoFirstRow .* thetaNoFirstRow);
[cost, ~] = costFunction(theta, X, y);
J = cost + regTerm;

hypothesis = sigmoid(X * theta);
gradPartial = (1 / m) * (X' * (hypothesis - y));

regGrad = (lambda / m) .* theta(2:end);
regGrad = [0; regGrad];
grad = gradPartial + regGrad;

% =============================================================

end
