Min = 35;
Max = 42;
li = zeros(1,7);
li(1) = 1;
li(2) = input("\nTemperature of patient { 35C-42C }: ");
li(2) = ( li(2) - Min )/( Max - Min );
li(3) = input("\nOccurrence of nausea { 0, 1}: ");
li(4) = input("\nLumbar pain { 0, 1 }: ");
li(5) = input("\nUrine pushing (continuous need for urination) { 1, 0 }: ");
li(6) = input("\nMicturition pains { 1, 0 }: ");
li(7) = input("\nBurning of urethra, itch, swelling of urethra outlet { 1, 0 }: ");

theta = [-6.40242 ,-2.53137 ,6.41191 ,-10.74731 ,13.87736 ,6.53072 ,-1.73427; -19.76393 ,7.38195 ,10.18248 ,10.87613 ,5.57733 ,-0.60511 ,5.65223];
x = li*theta';

if( x(1) >= 0.5 ),
	display("\nInflammation of urinary bladder: Yes\n");
else
	display("\nInflammation of urinary bladder: No\n");
endif;

if( x(2) >= 0.5 ),
	display("Nephritis of renal pelvis origin: Yes\n");
else
	display("Nephritis of renal pelvis origin: No\n");
endif;
