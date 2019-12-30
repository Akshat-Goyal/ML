function [J, grad] = costFunction(theta, X, y, lambda)

	[a b] = size(y);
	[m n] = size(X);

	theta = reshape(theta(1:b*n),b,n);

	z2 = X*theta';
	a2 = sigmoid(z2);

	J = -1/m*sum(sum(y.*log(a2)+(1-y).*log(1-a2))) + lambda/(2*m)*sum(sum(theta(:,2:end).*theta(:,2:end)));

	del2 = a2 - y;
	Theta_grad = zeros(size(theta));
	for i=1:m,
		Theta_grad = Theta_grad + del2(i,:)'*X(i,:);
	end;
	Theta_grad = Theta_grad/m;

	grad = Theta_grad(:);

end;