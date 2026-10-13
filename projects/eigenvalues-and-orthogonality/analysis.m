%% Math 240 Matlab Project 4
% Fall 2024
%
% Name: Aditya Agrawal
%
% *Type/paste Matlab commands for a particular problem/part below the
% correspondingly labeled line, above the next double % sign. Written
% responses to questions (not lines of code) should be given as comments,
% following a single percent symbol %
%% Problem 1
% (a)
format rat
P = [1 1 2 4; 0 2 -1 -1; 0 0 3 0; 0 0 0 1]
Q = [1 2 0 0; 3 1 3 3; 0 0 -1 0; 1 0 4 0]
%%
% (b)
R = inv(Q) * P
%%
% (c)
t3e = [0; 0; 0; 1]
t3c = inv(Q) * t3e
%%
% (d)
pB = [0; 1; 2; 3];
pC = R * pB
%%
% (e)
pE = P * pB
% p(t) = 17 - 3t + 6t^2 + 3t^3
%% Problem 2
% (a)
format short
A = [2 3 4; 5 6 7; 8 9 10]
eig(A)
%%
% (b)
% (i)
B = A([1,3,2], :)
eig(B)
% (ii)
C = A
C(2,:) = 2 * C(2,:)
eig(C)
% (iii)
D = A
D(1,:) = D(1,:) + (-3) * D(3,:)
eig(D)
%%
% (c)
% The eigenvalues of matrices B, C, and D were different from A, but they 
% shared one common eigenvalue: 0. This is because 
% elementary row operations can change eigenvalues, but if the original 
% matrix A is singular (determinant zero), the resulting matrices will also
% be singular.
%% Problem 3
% (a)
A = [-5 3 0; -34 10 -4; 40 -12 5]
[P,D] = eig(A)
%%
% (b)
A_ver = P * D * inv(P)
%%
% (c)
eigvals = diag(D)
% λ1 = 5
% λ2 = 4
% λ3 = 1
% eigvec1 = [0.1799; 0.5998; -0.7797]
% eigvec2 = [0.1961; 0.5883; -0.7845]
% eigvec3 = [-0.2182; -0.4364; 0.8729]
%% Problem 4
% (a)
A = [3 1; 0 3]
[P,D] = eig(A)
%%
% (b)
A_ver = P * D * inv(P)
%%
% (c)
eigA = 3
E = A - eigA * eye(2)
eigvecbase = [1; 0]
%%
% (d)
% No basis for R^2 consisting of eigenvectors of A due to only one linearly
% independent eigenvector. This explains why diagonalization failed.
% A matrix is diagonalizable if it has enough linearly independent 
% eigenvectors to form a basis.
%% Problem 5
% (a)
A = [3  3  1; 3 -1 -1; 2  0  1; 0  5  2]

dot1 = dot(A(:,1), A(:,2))
dot2 = dot(A(:,3), A(:,3))
%%
% (b)
AtA = A' * A
%%
% (c)
% The entries of A^T * A are the dot products of the columns of A.
%%
% (d)
% In general, the entries of A * A^T are the dot products of the rows of A.
%%
% (e)
AAt = A * A'
dot12 = dot(A(1,:), A(2,:))
dot33 = dot(A(3,:), A(3,:))

%%
% (f)
Q = [1/sqrt(14) 1/sqrt(3) 5/sqrt(42); 2/sqrt(14) 1/sqrt(3) -4/sqrt(42);
     3/sqrt(14) -1/sqrt(3) 1/sqrt(42)]
QtQ = Q' * Q
%%
% (g)
% The computation Q^T * Q forms the identity matrix.
% This shows that the columns of Q are orthonormal because:
% - The dot product of each pair of distinct columns is zero
% - The dot product of each column with itself is one
%%
% (h)
% Since Q is a square matrix and Q^T * Q = I,
% it follows that Q * Q^T = I as well.
% So, the rows of Q are also orthonormal.