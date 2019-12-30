load('diagnosis.data');

Min = 35;
Max = 42;
diagnosis(:,1) = (diagnosis(:,1)-Min)./(Max-Min);
[m n] = size(diagnosis);
diagnosis = [ones(m,1) ,diagnosis ,zeros(m,1)];

for i=1:m,
	if(diagnosis(i,n)==0 && diagnosis(i,n+1)==0)
		diagnosis(i,n+2)=1;
	endif;
end;

a = floor(65*m/100);
X = diagnosis(1:a, 1:n-1);
y = diagnosis(1:a, n:n+2);

b = floor(20*m/100) + a;
Xval = diagnosis(a+1:b, 1:n-1);
yval = diagnosis(a+1:b, n:n+2);

Xtest = diagnosis(b+1:m, 1:n-1);
ytest = diagnosis(b+1:m, n:n+2);

[a b] = size(y);
[m n] = size(X);
initial_theta = randInitializeWeights(b, n)(:);

lambda_vec = [0.001 ;0.003 ;0.01 ;0.03 ;0.1 ;0.3 ;1 ;3 ;10];
c = length(lambda_vec);
J1 = zeros(c,1);
J2 = zeros(c,1);
J3 = zeros(c,1);
theta_set = [];

for i=1:c,
	lambda = lambda_vec(i);
	init_theta = initial_theta;
	options = optimset('MaxIter', 200, 'GradObj', 'on');
	cost_function = @(p) costFunction(p ,X ,y ,lambda);
	[theta, cost] = fmincg(cost_function, init_theta, options);
	J1(i) = costFunction(theta, X, y, 0);
	J2(i) = costFunction(theta, Xval, yval, 0);
	J3(i) = costFunction(theta, Xtest, ytest, 0);
	theta_set = [theta_set ;reshape(theta(1:b*n),b,n) ;zeros(1,n)];
end;
	
plot(lambda_vec,J1);
axis([0 0.01 0 0.1]);
xlabel('lambda');
ylabel('min_cost_func');
hold on;
plot(lambda_vec,J2);
hold on;
plot(lambda_vec,J3);
legend('J1','J2','J3');