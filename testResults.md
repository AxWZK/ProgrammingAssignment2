### R Programmin: Programming Assignment 2: Lexical Scoping - Test Results

Create 4x4 test matrix called `mat`


	mat <- matrix(rnorm(16), 4, 4) ## create a 4x4 matrix
	mat
	           [,1]       [,2]       [,3]       [,4]
	[1,] -0.2930370  0.5251819  0.5152854  1.4722373
	[2,]  0.4557467  0.1986269 -0.2565845  0.8573925
	[3,]  0.8625963  0.3744405 -1.1007564 -1.0960090
	[4,] -1.8642597 -0.2188292 -0.4399700 -1.0901191

Create instance ov `makeCacheMatrix` and execute first run of `cacheSolve`

	testMat <- makeCacheMatrix(mat) ## set up the "special matrix"
	cacheSolve(testMat) ## first run of the calculation. Should NOT be cached at this point
		[,1]       [,2]        [,3]        [,4]
	[1,] -0.2372631 -0.0726152  0.09489767 -0.47295388
	[2,]  1.6115868 -1.4388634  1.12381784 -0.08507973
	[3,]  0.4687643 -1.6009462 -0.10968268 -0.51580963
	[4,] -0.1069464  1.0591569 -0.34361468  0.11674649

Call second instance of `cacheSolve` to see if it gets the cached matrix

	cacheSolve(testMat) ## Second run of the calculation. SHOULD be cached at this point
	getting cached data...
		[,1]       [,2]        [,3]        [,4]
	[1,] -0.2372631 -0.0726152  0.09489767 -0.47295388
	[2,]  1.6115868 -1.4388634  1.12381784 -0.08507973
	[3,]  0.4687643 -1.6009462 -0.10968268 -0.51580963
	[4,] -0.1069464  1.0591569 -0.34361468  0.11674649


