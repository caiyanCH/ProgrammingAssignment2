## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



##here is my code
makeCacheMatrix <- function(x=matrix()){  inv=NULL # 初始化逆矩阵为空值  set<- function(y){    x<<- y    inv<<- NULL # 当新的矩阵设置时，清除缓存的逆矩阵  }  get<- function() x  setInverse <-function(inverse) inv<<- inverse  getInverse<-function()inv  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)}cacheSolve<-function(x,...){
 ## 从x中获取缓存的逆矩阵  inv<-x$getInverse
   ## 如果缓存的逆矩阵不存在，则计算逆矩阵  if(!is.null(inv)){    message("getting cached data")    return(inv)  }  data<-x$get()  inv<-solve(data,...) # 计算逆矩阵  x$setInverse(inv) # 将逆矩阵缓存起来  inv # 返回逆矩阵}
    
