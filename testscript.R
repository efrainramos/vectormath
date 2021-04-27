#library(devtools)
#install_github("efrainramos/vectormath")
#library(vectormath)



#simple test given simple vectors
vec1 <- c(1,2,3)
vec2 <- c(3,2,1)


plot_crossprod(vec1,vec2)
crossprod(vec1,vec2)
dotprod(vec1,vec2)
vector_mag(vec1)
unit_vector(vec1)

#more data to test our function
matrix_of_vectors <- matrix(sample(1:20,30,replace = TRUE),ncol=3)

#each row in the matrix is a vector
created_vector <- matrix_of_vectors[1,] #creates a vector from row one in the matrix
created_vector2 <- matrix_of_vectors[3,] #creates a vector from row one in the matrix

#skeleton code to create vector from matrix
#vec <- matrix_of_vectors[i,] #replace the i with any index up to 10. i can be greater than 10 if the matrix is edited

#now you can test the functions
plot_crossprod(created_vector,created_vector2)
crossprod(created_vector,created_vector2)
dotprod(created_vector,created_vector2)
vector_mag(created_vector)
unit_vector(created_vector)

#
