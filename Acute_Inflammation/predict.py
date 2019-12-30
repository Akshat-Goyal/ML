li = []*7
li[0] = 1
print("Temperature of patient { 35C-42C }")
li[1] = (input()-35)/(42-35)
print("Occurrence of nausea { 0, 1}")
li[2] = input()
print("Lumbar pain { 0, 1 }")
li[3] = input()
print("Urine pushing (continuous need for urination) { 1, 0 }")
li[4] = input()
print("Micturition pains { 1, 0 }")
li[5] = input()
print("Burning of urethra, itch, swelling of urethra outlet { 1, 0 }")
li[6] = input()

theta = [[-4.40780,-5.22960,5.06284,-9.83564,12.68278,7.42017,-1.52519],
   		[-5.39841,-2.74480,-0.37658,-2.51075,-2.30247,-1.26762,-1.07094],
    	[4.93700,5.55125,-5.92033,11.04599,-13.64938,-8.77261,2.17064]]
