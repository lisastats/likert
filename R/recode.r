#' Recode a vector.
#' 
#' @param x the vector whose values will be recoded.
#' @param from the old values in x to be recoded. 
#' @param to the new values. 
#' @param to.class an 'as.' function representing the desired vector type (i.e. 
#'       as.character, as.numeric, as.logical, as.numeric).
#' @return a vector with same length of x with recoded values.
#' @export
recode <- function(x, from, to, to.class=NULL) {
	if(is.null(to.class)) {
		if(is.character(x)) {
			to.class <- as.character
		} else { 
			to.class <- as.integer
		}
	}
	if(length(from) != length(to)) {
		stop('The length of from and to do not match')
	}
	r <- rep(to.class(NA), length(x))
	if(is.factor(x) & is.numeric(from)) {
		from = levels(x)[from]
	}
	for(i in seq_along(from)) {
		r[x == from[i]] = to[i]
	}
	return(to.class(r))
}
