#	Diagnosing of Urinary Diseases Using ML  

## Application Type

	This is a Machine Learning project which used Regularized Logistic Regression to perform the diagnosing of the acute inflammations of urinary bladder and acute nephritises. The data is created by a medical expert.

## About Diseases

	Acute inflammation of urinary bladder is characterised by sudden occurrence of pains in the abdomen region and the urination in form of constant urine pushing, micturition pains and sometimes lack of urine keeping. Temperature of the body is rising, however most often not above 38C. The excreted urine is turbid and sometimes bloody. At proper treatment, symptoms decay usually within several days. However, there is inclination to returns. At persons with acute inflammation of urinary bladder, we should expect that the illness will turn into protracted form.

	Acute nephritis of renal pelvis origin occurs considerably more often at women than at men. It begins with sudden fever, which reaches, and sometimes exceeds 40C. The fever is accompanied by shivers and one- or both-side lumbar pains, which are sometimes very strong. Symptoms of acute inflammation of urinary bladder appear very often. Quite not infrequently there are nausea and vomiting and spread pains of whole abdomen.

##	Run Application

	Run 'predict.m' script in Matlab or Octave. This script asks you to give 6 Inputs:-
		1. Temperature of patient { 35C-42C }
		2. Occurrence of nausea { 1, 0 }
		3. Lumbar pain { 1, 0 }
		4. Urine pushing (continuous need for urination) { 1, 0 }
		5. Micturition pains { 1, 0 }
		6. Burning of urethra, itch, swelling of urethra outlet { 1, 0 }

	Output:
		1. Inflammation of urinary bladder { yes, no }
		2. Nephritis of renal pelvis origin { yes, no }