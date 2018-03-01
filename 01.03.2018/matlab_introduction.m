%!test
%! % Note: Most solutions are verified using assertions. The first parameter in each assertion is the solution to the corresponding exercise.
%!
%! % 1. Construct the matrix
%! %     /  1   8   3  \
%! % A = |  3  10   7  |
%! %     \  5   6   9  /
%! A = [1 8 3; 3 10 7; 5 6 9];
%!
%! % 2. Extract the 9 from A
%! assert(
%!   A(3, 3),
%!   9
%! );
%!
%! % 3. Extract the first column from A
%! assert(
%!   A(:, 1),
%!   [1; 3; 5]
%! );
%!
%! % 4. Construct a 1x6 matrix of ones
%! assert(
%!   ones(1, 6),
%!   [1 1 1 1 1 1]
%! );
%!
%! % 5. Construct a square matrix of ones of order 4
%! assert(
%!   ones(4),
%!   [
%!     1 1 1 1;
%!     1 1 1 1;
%!     1 1 1 1;
%!     1 1 1 1;
%!   ]
%! );
%!
%! % 6. Construct a 2x3 matrix of zeros
%! assert(
%!   zeros(2, 3),
%!   [
%!     0 0 0;
%!     0 0 0;
%!   ]
%! );
%!
%! % 7. Construct a square matrix of zeros of order 3
%! assert(
%!   zeros(3),
%!   [
%!     0 0 0;
%!     0 0 0;
%!     0 0 0;
%!   ]
%! );
%!
%! % 8. Construct a unit matrix of order 3
%! assert(
%!   eye(3),
%!   [
%!     1 0 0;
%!     0 1 0;
%!     0 0 1;
%!   ]
%! );
%!
%! % 9. Construct a vector with the integers from 1 to and including 7
%! assert(
%!   1:7,
%!   [1 2 3 4 5 6 7]
%! );
%!
%! % 10. Construct a vector with all multiples of 0.2 between and including 0 and 1
%! assert(
%!   0:0.2:1,
%!   [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
%!   1e-10
%! );
%!
%! % 11. Construct a matrix by adding 1 to each element of A
%! assert(
%!   A + ones(3),
%!   [
%!     2   9   4;
%!     4  11   8;
%!     6   7  10;
%!   ]
%! );
%!
%! % 12. Find the smallest element in the second column of A
%! assert(
%!   min(A(:, 2)),
%!   6
%! );
%!
%! % 13. Find the largest element in the first row of A
%! assert(
%!   max(A(1, :)),
%!   8
%! );
%!
%! % 14. Generate a U(0, 1) random 4x5 matrix
%! rand(4, 5);
%!
%! % 15. Use the embedded 'help' or 'lookfor' operators to find the difference between rand and randn
%! % Simply type: help randn
%!
%! % 16. Construct the matrix
%! %     /  11   12   13   14  \
%! % C = |  21   22   23   24  |
%! %     |  31   32   33   34  |
%! %     \  41   42   43   44  /
%! C = [11:14; 21:24; 31:34; 41:44];
%! assert(
%!   C,
%!   [
%!     11 12 13 14;
%!     21 22 23 24;
%!     31 32 33 34;
%!     41 42 43 44;
%!   ]
%! );
%!
%! % 17. Extract the main diagonal from C
%! assert(
%!   diag(C),
%!   [11; 22; 33; 44]
%! );
%!
%! % 18. Extract the vector [13; 24] from C
%! assert(
%!   diag(C, 2),
%!   [13; 24]
%! );
%!
%! % 19. Extract the number 41 from C
%! assert(
%!   diag(C, -3),
%!   41
%! )
%!
%! % 20. Construct the order 13 matrix
%! %     /  -10   2    0   ...  \
%! % K = |   1   -10  ...    0  |
%! %     |   0   ...   -10   2  |
%! %     \  ...   0    1   -10  /
%! n = 13;
%! K = -10 * eye(n) + diag(2 * ones(1, n-1), 1) + diag(ones(1, n-1), -1);
%! assert(
%!   K,
%!   [
%!     -10 2 0 0 0 0 0 0 0 0 0 0 0;
%!     1 -10 2 0 0 0 0 0 0 0 0 0 0;
%!     0 1 -10 2 0 0 0 0 0 0 0 0 0;
%!     0 0 1 -10 2 0 0 0 0 0 0 0 0;
%!     0 0 0 1 -10 2 0 0 0 0 0 0 0;
%!     0 0 0 0 1 -10 2 0 0 0 0 0 0;
%!     0 0 0 0 0 1 -10 2 0 0 0 0 0;
%!     0 0 0 0 0 0 1 -10 2 0 0 0 0;
%!     0 0 0 0 0 0 0 1 -10 2 0 0 0;
%!     0 0 0 0 0 0 0 0 1 -10 2 0 0;
%!     0 0 0 0 0 0 0 0 0 1 -10 2 0;
%!     0 0 0 0 0 0 0 0 0 0 1 -10 2;
%!     0 0 0 0 0 0 0 0 0 0 0 1 -10;
%!   ]
%! )
%!
%! % 21. Use the diag function to construct the matrix
%! %     /  1   -1    3  \
%! % B = |  0    5    2  |
%! %     \  0    0   -4  /
%! B = diag([1 5 -4]) + diag([-1, 2], 1) + diag(3, 2);
%! assert(
%!   B,
%!   [
%!     1 -1  3;
%!     0  5  2;
%!     0  0 -4;
%!   ]
%! );
%!
%! % 22. Use the triu and tril functions to construct the matrix
%! %     /  1    0    0   -1  \
%! % P = |  1    1    0    0  |
%! %     |  1    1    1    0  |
%! %     \  1    1    1    1  /
%! P = tril(ones(4)) + triu(-ones(4), 3);
%! assert(
%!   P,
%!   [
%!     1  0  0 -1;
%!     1  1  0  0;
%!     1  1  1  0;
%!     1  1  1  1;
%!   ]
%! );
%!
%! % 23. Construct the matrix
%! %     /  3    0   -1    0    0    0  \
%! % P = |  0    3    0   -1    0    0  |
%! %     | -1    0    3    0   -1    0  |
%! %     |  0   -1    0    3    0   -1  |
%! %     |  0    0   -1    0    3    0  |
%! %     \  0    0    0   -1    0    3  /
%! D = 3 * eye(6) + diag(-ones(1, 4), -2) + diag(-ones(1, 4), 2);
%! assert(
%!   P,
%!   [
%!     3  0 -1  0  0  0;
%!     0  3  0 -1  0  0;
%!    -1  0  3  0 -1  0;
%!     0 -1  0  3  0 -1;
%!     0  0 -1  0  3  0;
%!     0  0  0 -1  0  3;
%!   ]
%! );
%!
%! % 24. Transpose D
%! % Note: We use that D is symmetric. Another options for transposing is the 'transpose' function.
%! assert(
%!   D',
%!   D
%! );
%!
%! % 25. Find the inverse of D
%! inv(D);
%!
%! % 26. Define the following matrices
%! %
%! %     /  2   -1    1  \
%! % A = |  1    0    1  |
%! %     \  3   -1    4  /
%! %
%! %     /  1    2    1  \
%! % B = |  2    1    2  |
%! %     \  2    2    1  /
%! %
%! % and compute [A^(-1)]^(-1)
%! assert(
%!   inv(inv(A)),
%!   A,
%!   1e-10
%! );
%!
%! % 27. Compute the inverse of AB
%! inv(A * B);
%!
%! % 28. Compare the inverse of AB to the inverse of the element-wise product of A and B
%! assert(
%!   inv(A * B) != inv(A .* B)
%! );
%!
%! % 29. Compare the inverse of AB to the product of the inverses of A and B
%! assert(
%!   inv(A * B) != inv(A) * inv(B)
%! );
%!
%! % 30. Compute the transpose of the determinant of A
%! transpose(inv(A));
%!
%! % 31. Compute the determinant of AB
%! det(A * B);
%!
%! % 32. Compare the determinant of AB to the product of the determinants of A and B
%! assert(
%!   det(A * B),
%!   det(A) * det(B),
%!   1e-10
%! );
%!
%! % 33. Compute the determinant of the inverse of A
%! det(inv(A));
%!
%! % 34. Compare the determinant of the inverse of A to the reciprocal of the determinant of A
%! assert(
%!   det(inv(A)),
%!   1 / det(A),
%!   1e-10
%! );
%!
%! % 35. Find the zeros of the real polynomial x^2 + x - 6
%! assert(
%!   roots([1, 1, -6]),
%!   [-3; 2]
%! )
%!
%! % 36. Solve the system Ax = b, where
%! %
%! %     /  4   -2   -10  \
%! % A = |  2   10   -12  |
%! %     \ -4   -6    16  /
%! %
%! % b = (-10 32 -16)^T
%!
%! A = [4 -2 -10; 2 10 -12; -4 -6 16];
%! b = [-10; 32; -16];
%!
%! assert(
%!   A \ b,
%!   [2; 4; 1],
%!   1e-10
%! )
%!
%! % 37. Use another method to solve the system Cx = d, where
%! %
%! %     /  1   1  -1  \
%! % C = |  2   1   1  |
%! %     \  1   0   3  /
%! %
%! % d = (0 1 -1)^T
%!
%! C = [1 1 -1; 2 1 1; 1 0 3];
%! d = [0; 1; -1];
%!
%! assert(
%!   inv(C) * d,
%!   [5; -7; -2],
%!   1e-10
%! )
