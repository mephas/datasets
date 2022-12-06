data <- read.csv("anti-ccp.csv")


library(dtametasa)

sapply(seq(1,0.1,-0.2), function(p)
       {
         fit <- try(dtametasa.rc(data, p=p))
         if(inherits(fit, "try-error")) par <- rep(NA,5) else 
           fit$par
       }
       
       )

