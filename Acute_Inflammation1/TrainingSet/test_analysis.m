% lambda = 0.001 gives best result on cross-validation set as validated by training.m.
% F1 score using theta from training.m using lambda = 0.001.

load('diagnosis.data');

Min = 35;
Max = 42;
diagnosis(:,1) = ( diagnosis(:,1) - Min )./( Max - Min );
[m n] = size( diagnosis );
diagnosis = [ ones(m,1) ,diagnosis ];

b = floor(20*m/100) + floor(65*m/100);
Xtest = diagnosis(b+1:m, 1:n-1);
ytest = diagnosis(b+1:m, n:n+1);


theta = [-6.40242 ,-2.53137 ,6.41191 ,-10.74731 ,13.87736 ,6.53072 ,-1.73427; -19.76393 ,7.38195 ,10.18248 ,10.87613 ,5.57733 ,-0.60511 ,5.65223];

K = 0.5;

m = size(Xtest,1);
ytest_anal = Xtest*theta';
ytest_anal = ytest_anal >= K;

precision = zeros(2,1);
recall = zeros(2,1);
F1 = zeros(2,1);

test_anal1 = zeros(2,2);
for i=1:m,
	if(ytest(i,1) == 1 && ytest_anal(i,1) == 1)
		test_anal1(1,1) = test_anal1(1,1) + 1;
	elseif(ytest(i,1) == 1 && ytest_anal(i,1) == 0)
		test_anal1(1,2) = test_anal1(1,2) + 1;
	elseif(ytest(i,1) == 0 && ytest_anal(i,1) == 1)
		test_anal1(2,1) = test_anal1(2,1) + 1;
	else
		test_anal1(2,2) = test_anal1(2,2) + 1;
	endif;
end;

precision(1) = test_anal1(1,1)/(test_anal1(1,1)+test_anal1(2,1));
recall(1) = test_anal1(1,1)/(test_anal1(1,1)+test_anal1(1,2));
F1(1) = 2*precision(1)*recall(1)/(precision(1)+recall(1));


test_anal2 = zeros(2,2);
for i=1:m,
	if(ytest(i,2) == 1 && ytest_anal(i,2) == 1)
		test_anal2(1,1) = test_anal1(1,1) + 1;
	elseif(ytest(i,2) == 1 && ytest_anal(i,2) == 0)
		test_anal2(1,2) = test_anal1(1,2) + 1;
	elseif(ytest(i,2) == 0 && ytest_anal(i,2) == 1)
		test_anal2(2,1) = test_anal1(2,1) + 1;
	else
		test_anal2(2,2) = test_anal1(2,2) + 1;
	endif;
end;

precision(2) = test_anal2(1,1)/(test_anal2(1,1)+test_anal2(2,1));
recall(2) = test_anal2(1,1)/(test_anal2(1,1)+test_anal2(1,2));
F1(2) = 2*precision(2)*recall(2)/(precision(2)+recall(2));

% 0.5 gives 100% precision and recall