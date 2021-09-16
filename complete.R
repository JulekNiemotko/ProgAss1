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
    # a jak zdefiniuję dataframe z jednym pustym wierszem żeby móc nadać kolumnom nazwy, to potem ten wiersz się pałęta. Można by to potem usunąć, ale wychodzi na to samo
    # co nadanie nazwy na końcu
    # bierzemy całość z rawdata z danego pliku
    # potem complete.cases zwraca wektor TRUE/FALSE 
    # which() zwraca wektor z numerami pozycji które są TRUE i liczymy jego długość, co nam daje ilość kompletnych rekordów
    # i ta długość razem z numerkiem pliku jest zwracana do dataframe ccs - wynikowego funkcji
}
