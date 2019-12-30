function W = randInitializeWeights(L_out, L_in)

W = zeros(L_out, L_in);
epsilon_init = sqrt(6)/sqrt(L_out + L_in - 1);
W = rand(L_out, L_in)*2*epsilon_init - epsilon_init;

end;