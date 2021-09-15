pollutantmean <- function(directory, pollutant, id = 1:332){
    rawdata <- data.frame()
    for (i in id) {
        filename <- file.path(directory,paste(formatC(i,width = 3, flag = "0"),".csv",sep = ""),fsep = .Platform$file.sep)
        rawdata <- rbind.data.frame(rawdata,read.csv(filename))
    }
    colMeans(rawdata[pollutant],na.rm = TRUE)
    #napisanie tej funkcji zajęło mi 3 godziny, co daje poł godziny na jedną linię kodu :)
}

