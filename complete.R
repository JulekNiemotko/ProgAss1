complete <- function(directory, id = 1:332){
    ccs <- data.frame()
    files <- list.files(directory)
    for (i in id){
        rawdata <- read.csv(file.path(directory,files[i]))
        ccs <- rbind.data.frame(ccs,c(i,length(which(complete.cases(rawdata)))))
    }
    colnames(ccs) <- c("id","nobs")
    ccs
    # tu już zaledwie 30 minut
    # nie podoba mi sie nadawanie nazw kolumnom na końcu ale nie mogę znaleźc sposobu na stworzenie pustego data.frame 
    # z nazwami kolumn
    # a jak zrobię z jednym wierszem to potem on się pałęta 
}
