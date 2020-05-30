matrix = rand(2,4)
display("text/plain", matrix)
println("The biggest element of the matrix is:")
println(findmax(matrix))

matrixA = rand(-10:10, 2,3)
matrixB = rand(-10:10, 2,3)
return

display("text/plain", matrixA)

display("text/plain", matrixB)

addition = matrixA + matrixB
display("text/plain", addition)

subtraction = matrixA - matrixB
display("text/plain", subtraction)

matrixC = rand(-10:10, 3,2)

AxC = matrixA * matrixC
display("text/plain", AxC)

CxA = matrixC * matrixA
display("text/plain", CxA)

matrixD = rand(-10:10, 3,3)
display("text/plain", matrixD)

matrixE = rand(-10:10, 3,3)
display("text/plain", matrixE)

D_E = matrixD / matrixE
display("text/plain", D_E)

DxiE = matrixD * inv(matrixE)
display("text/plain", DxiE)

matrix = rand(-10:10, 3,3)
display(matrix)

matrix_add_one = matrix .+ 1
display(matrix_add_one)

matrix_minus_one = matrix .- 1
display(matrix_minus_one)

matrixx2 = matrix .* 2
display(matrixx2)

matrix_2 = matrix ./ 2
display(matrix_2)

matrix = rand(-10:10, 3,4)
display(matrix)

vector = rand(-10:10, 4,1)
display(vector)

multi = matrix * vector
display(multi)


