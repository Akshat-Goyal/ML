function k = predict(li)

	k = 1;
	theta = [-5.8821,-6.7336,6.1214,-12.0909,16.6526,9.3250,-1.9907; -17.4151,7.7917,14.0402,8.3658,4.8918,-4.0299,6.7015;6.7686,2.2263,-9.3596,2.1206,-16.1586,-10.6763,-6.0191];
	li(1) = (li(1)-35)/(42-35);
	li = [1, li];
	x = li*theta';
	if(x(1) >= 0.5),
		display("Inflammation of urinary bladder: Yes\n")
	else
		display("Inflammation of urinary bladder: No\n")
	endif;
	if(x(2) >= 0.5),
		display("Nephritis of renal pelvis origin: Yes\n")
	else
		display("Inflammation of urinary bladder: No\n")
	endif;
end;
