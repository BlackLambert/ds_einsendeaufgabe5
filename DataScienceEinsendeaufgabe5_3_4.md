## Einsendeaufgabe 5 - Aufgabe 3
"Create a 2x4 two dimensional matrix with random floats in it and in the next step determine the biggest element."


```julia
matrix = rand(2,4)
display("text/plain", matrix)
println("The biggest element of the matrix is:")
println(findmax(matrix))
```


    2×4 Array{Float64,2}:
     0.391458  0.198506  0.701368  0.957722
     0.569523  0.931727  0.53084   0.729258


    The biggest element of the matrix is:
    (0.9577217706744656, CartesianIndex(1, 4))
    

## Einsendeaufgabe 5 - Aufgabe 4
### a) Create two matrices of the same layout and test if addition and subtraction of the matrix works as expected: C = A + B



```julia
matrixA = rand(-10:10, 2,3)
matrixB = rand(-10:10, 2,3)
return
```

#### Matrix A:


```julia
display("text/plain", matrixA)
```


    2×3 Array{Int64,2}:
     -5  2   3
     -4  3  -1


#### Matrix B:


```julia
display("text/plain", matrixB)
```


    2×3 Array{Int64,2}:
      2  -8  -10
     -4   1    4


#### Addition:


```julia
addition = matrixA + matrixB
display("text/plain", addition)
```


    2×3 Array{Int64,2}:
     -3  -6  -7
     -8   4   3


Bei der Addition wird jedes Element der ersten Matrix mit dem Element der zweiten Matrix am selben Index addiert.
Die Addition erfolgt wie erwartet.

#### Subtraktion:


```julia
subtraction = matrixA - matrixB
display("text/plain", subtraction)
```


    2×3 Array{Int64,2}:
     -7  10  13
      0   2  -5


Bei der Subtraktion wird jedes Element der ersten Matrix mit dem Element der zweiten Matrix am selben Index subtrahiert.
Die Subtraktion erfolgt wie erwartet.

### b) Now compare matrix multiplication either this way A * B and this way A .* B. Whats the difference?!
#### Matrix C


```julia
matrixC = rand(-10:10, 3,2)
```




    3×2 Array{Int64,2}:
     -3    7
      6   -2
      9  -10



#### Multiplikation A * C


```julia
AxC = matrixA * matrixC
display("text/plain", AxC)
```


    2×2 Array{Int64,2}:
     54  -69
     21  -24


Wie erwartet ist bei der Multiplikation eine 2x2 Matrix entstanden. Die Zeilen der ersten Matrix werden mit den Spalten der zweiten Matrix multipliziert. Darum entsteht bei der umgekehrten Multiplikation C x A eine 3x3 Matrix:


```julia
CxA = matrixC * matrixA
display("text/plain", CxA)
```


    3×3 Array{Int64,2}:
     -13   15  -16
     -22    6   20
      -5  -12   37


### c) What about matrix division with „/“ or „\“?!
Die Division zweier Matrizen ist die Multiplikation der ersten Matrize mit der Inversen der zweiten Matrix. Aus diesem Grund brauch Divisor und Divident die gleiche Matrixgröße.

#### Matrix D:


```julia
matrixD = rand(-10:10, 3,3)
display("text/plain", matrixD)
```


    3×3 Array{Int64,2}:
      1  -8    1
     -3  -7  -10
      1  -6   -2


#### Matrix E:


```julia
matrixE = rand(-10:10, 3,3)
display("text/plain", matrixE)
```


    3×3 Array{Int64,2}:
     -8    2  -1
     -8   -8  -8
     -7  -10  -2


#### Matrix D durch Matrix E


```julia
D_E = matrixD / matrixE
display("text/plain", D_E)
```


    3×3 Array{Float64,2}:
     -0.633803  -0.267606   0.887324
     -0.577465   1.47007   -0.591549
     -0.619718   0.260563   0.267606


#### Matrix D mal Inverse der Matrix E


```julia
DxiE = matrixD * inv(matrixE)
display("text/plain", DxiE)
```


    3×3 Array{Float64,2}:
     -0.633803  -0.267606   0.887324
     -0.577465   1.47007   -0.591549
     -0.619718   0.260563   0.267606


Beide Matrizen sind identisch. Das beweist meine oben getroffene Aussage.

### d) Create a 3x3 integer matrix A with useful numbers. Now try A+1, A-1, A*2, A/2.

Hierfür ist eine elementweise Addition/Subtraktion/Multiplikation/Division notwenig.
#### Matrix


```julia
matrix = rand(-10:10, 3,3)
display(matrix)
```


    3×3 Array{Int64,2}:
     -4  -8  10
      6  -2   1
     -4  -3   0


#### Matrix + 1


```julia
matrix_add_one = matrix .+ 1
display(matrix_add_one)
```


    3×3 Array{Int64,2}:
     -3  -7  11
      7  -1   2
     -3  -2   1


#### Matrix - 1


```julia
matrix_minus_one = matrix .- 1
display(matrix_minus_one)
```


    3×3 Array{Int64,2}:
     -5  -9   9
      5  -3   0
     -5  -4  -1


#### Matrix * 2


```julia
matrixx2 = matrix .* 2
display(matrixx2)
```


    3×3 Array{Int64,2}:
     -8  -16  20
     12   -4   2
     -8   -6   0


#### Matrix / 2


```julia
matrix_2 = matrix ./ 2
display(matrix_2)
```


    3×3 Array{Float64,2}:
     -2.0  -4.0  5.0
      3.0  -1.0  0.5
     -2.0  -1.5  0.0


### e) Now multiply a 3x4 matrix with a suitable (4)vector.
#### Matrix


```julia
matrix = rand(-10:10, 3,4)
display(matrix)
```


    3×4 Array{Int64,2}:
     -1   9  -6   0
     10   5   7  -6
     -1  10  -9  -6


#### Vector


```julia
vector = rand(-10:10, 4,1)
display(vector)
```


    4×1 Array{Int64,2}:
     -1
     10
     10
     -8


#### Multiplication


```julia
multi = matrix * vector
display(multi)
```


    3×1 Array{Int64,2}:
      31
     158
      59



```julia

```
