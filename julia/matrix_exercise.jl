#=
matrix_exercise:
- Author: linda
- Date: 2021-05-19
=#


random_matrix = rand(Float64, (2,4))
println(random_matrix)
println(maximum(random_matrix))

  a = [2 2; 2 2]
  b = [1 1; 1 1]

println("a = $a")
println("b = $b")
println("a + b = $(a + b)")
println("a * b = $(a * b)")
println("b * a = $(b * a)")
println("a / b doesnt work")
println("a \\ b doesnt work")

c = [2 2 ; 2 2 ; 2 2]
println(c)
println("c + 1 = $(c .+ 1)")
println("c - 1 = $(c .- 1)")
println("c * 2 = $(c .* 2)")
println("c / 2 = $(c ./ 2)")

d = [2 2 2 2; 2 2 2 2; 2 2 2 2]
vector = [3,3,3,3]
println("d * vector= $(d * vector)")