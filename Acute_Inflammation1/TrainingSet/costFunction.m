function [J, grad] = costFunction(theta, X, y, lambda)

	[m n] = size(X);

	a = sigmoid(X*theta);

	J = -1/m*( y'*log(a) + (1-y)'*log(1-a) ) + lambda/(2*m)*( theta'*theta - theta(1)^2 );

	grad = 1/m.*X'*( a - y );
	grad(2:end) = grad(2:end) + lambda/m.*theta(2:end);

end;