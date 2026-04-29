matrix_data = 11:19
matrix1 = matrix(matrix_data, nrow = 3 , ncol = 3, byrow = TRUE)
print(matrix1)

matrix_data = 1:9
matrix2 = matrix(matrix_data,nrow = 3, ncol = 3,byrow = TRUE)
print(matrix2)
print("Matrix Addition")
print(matrix1 + matrix2)
print("matrix subraction")
print(matrix1 - matrix2)
print("matrix multiplication")
print(matrix1 * matrix2)
matrix_transpose <- t(matrix1)
print("matrix_transpose")
print(matrix_transpose)
matrix_determinant = det(matrix1)
print("matrix Determinant")
print(matrix_determinant)
