
#' @import rgl matlib
NULL


#' Returns the dot product of 2 3D vectors
#' @export
#' @param x a vector of length 3. ex. c(1,2,3)
#' @param y a vector of length 3
#' @return The output is a number(scalar).


dotprod <- function(x,y){
  return(x[1]*y[1]+x[2]*y[2]+x[3]*y[3])
}

#' returns the cross product of 2 3D vectors
#' @export
#' @param x a vector of length 3
#' @param y a vector of length 3
#' @return a vector of length 3
crossprod <- function(x,y){
  c1 <- (x[2]*y[3])-(x[3]*y[2])
  c2 <- (x[3]*y[1])-(x[1]*y[3])
  c3 <- (x[1]*y[2])-(x[2]*y[1])

  return(c(c1,c2,c3))
}

#' Plots the cross product of 2 3D vectors, and the 2 inputted vectors on a 3D graph
#' @export
#' @param x a vector of length 3.
#' @param y a vector of length 3.
#' @param unit default is set to FALSE. When set to TRUE, the function will plot all the vectors as unit vectors.
#' using TRUE will not give an accurate representation of the original vectors because they will all have a magnitude of 1.
#' @return a 3D graph with the 2 original 3D vectors, and the cross product vector. This 3D graph can be rotated and zoomed in and out.

plot_crossprod <- function(x,y,unit = FALSE){
  if(unit == TRUE){
    vec1 <- unit_vector(x)
    vec2 <- unit_vector(y)
    crossvec <- unit_vector(crossprod(x,y))
  }
  else{
  vec1 <- x
  vec2 <- y
  crossvec <- crossprod(x,y)
  }


  vec_matrix <- rbind(vec1,vec2,crossvec)

  open3d()
  axes3d()
  title3d(xlab ="x-axis",ylab="y-axis",zlab = "z-axis")
  vectors3d(vec_matrix,lw=2,headlength = 0.1, radius= 0.1)

  planes3d(0,0,1,col = "blue",alpha = 0.35)
  planes3d(0,1,0,col = "green", alpha = 0.35)
  planes3d(1,0,0,col = "red", alpha = 0.35)
}


#' finds the magnitude of a 3D vector
#' @export
#' @param x a vector of length 3
#' @return a number which is the magnitude of the vector
vector_mag <- function(x){

  return(sqrt(x[1]*x[1]+x[2]*x[2]+x[3]*x[3]))
}

#' returns the unit vector of a 3D vector
#' @export
#' @param x a vector of length 3
#' @return a vector of length 3. This 3D vector will have a magnitude of 1
unit_vector <- function(x){
  return(x/vector_mag(x))
}

