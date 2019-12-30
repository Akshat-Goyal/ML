load('diagnosis.data');

Min = 35;
Max = 42;
diagnosis(:,1) = ( diagnosis(:,1) - Min )./( Max - Min );
[m n] = size( diagnosis );
diagnosis = [ ones(m,1) ,diagnosis ];


a = floor(65*m/100);
X = diagnosis(1:a, 1:n-1);
y = diagnosis(1:a, n:n+1);

b = floor(20*m/100) + a;
Xval = diagnosis(a+1:b, 1:n-1);
yval = diagnosis(a+1:b, n:n+1);

Xtest = diagnosis(b+1:m, 1:n-1);
ytest = diagnosis(b+1:m, n:n+1);

[m n] = size(X);

lambda_vec = [0.001 ;0.003 ;0.01 ;0.03 ;0.1 ;0.3 ;1 ;3 ;10];
c = length(lambda_vec);
J1 = zeros(c,2);
J2 = zeros(c,2);
J3 = zeros(c,2);
theta_set = [];

for i=1:c,
	for j=1:2,
 		lambda = lambda_vec(i);
 		initial_theta = zeros(n,1);
 		options = optimset('MaxIter', 200, 'GradObj', 'on');
 		cost_function = @(p) costFunction(p ,X ,y(:,j) ,lambda);
 		[theta, cost] = fmincg(cost_function, initial_theta, options);
 		J1(i,j) = costFunction(theta, X, y(:,j), 0);
 		J2(i,j) = costFunction(theta, Xval, yval(:,j), 0);
 		J3(i,j) = costFunction(theta, Xtest, ytest(:,j), 0);
 		theta_set = [theta_set ;reshape(theta(1:1*n),1,n) ];
 	end;
 	theta_set = [theta_set ;zeros(1,n) ];
end;
	
plot(lambda_vec,J1(:,1));
axis([0 0.01 0 0.1]);
xlabel('lambda');
ylabel('min_cost_func');
hold on;
plot(lambda_vec,J2(:,1));
hold on;
plot(lambda_vec,J3(:,1));
legend('J1','J2','J3');

figure 2;
plot(lambda_vec,J1(:,2));
axis([0 0.01 0 0.1]);
xlabel('lambda');
ylabel('min_cost_func');
hold on;
plot(lambda_vec,J2(:,2));
hold on;
plot(lambda_vec,J3(:,2));
legend('J1','J2','J3');

% lambda = 0.001 gives best result on cross-validation set.

% theta = [-6.40242 ,-2.53137 ,6.41191 ,-10.74731 ,13.87736 ,6.53072 ,-1.73427; -19.76393 ,7.38195 ,10.18248 ,10.87613 ,5.57733 ,-0.60511 ,5.65223];
