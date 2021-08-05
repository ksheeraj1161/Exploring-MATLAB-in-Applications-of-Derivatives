clc
clear
A=input('Enter the matrix for diagonalization :');
[P D]=eig(A);
disp('Given Matrix (A) :')
disp(A)
disp('Modal Matrix (P):')
disp(P)
disp('Inverse of P :')
PI=inv(P);
disp(PI)
disp('Diagonal Matrix (D=Pˆ(-1)*A*P):')
DM=round(inv(P)*A*P, 2);
disp(DM)
disp('A^8=')
DM^8
