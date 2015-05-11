twoTailedTTest <- function(vec, mu0, alpha){
	results=t.test(vec, alternative="two.sided", mu=mu0, paired=FALSE, conf.level=alpha)
	if(mu0>results$conf.int[1] & mu0<results$conf.int[2]){
		solution <-TRUE
	}else{
		solution <-FALSE
	}
	pValue <- results$p.value
	c(solution, pValue)
}