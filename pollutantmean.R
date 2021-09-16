pollutantmean <- function(directory, pollutant, id = 1:332){
    rawdata <- data.frame()
    for (i in id) {
        filename <- file.path(directory,paste(formatC(i,width = 3, flag = "0"),".csv",sep = ""),fsep = .Platform$file.sep)
        rawdata <- rbind.data.frame(rawdata,read.csv(filename))
    }
    colMeans(rawdata[pollutant],na.rm = TRUE)
    #napisanie tej funkcji zajęło mi 3 godziny, co daje poł godziny na jedną linię kodu :)
    # for i in id -> petla uwzglednia tylko wymagane numery plików
    # generowanie poprawnej nazwy pliku za pomocą paste(konkatenacja) oraz formatC
    # w następnym programie (complete.R) to samo zrobione jest inaczej - lista plików jest czytana z katalogu i wrzucana do wektora, tak jest bardziej elegancko i
    # i odporne na zmiany formatów
    # filename konstruuje nazwę katalog/plik, fsep nadmiarowo, bo to i tak jest defaultowa wartość
    # najważeniejsze funkcje - read.csv()- czyta plik csv do data frame, rbind() - dołącza data frame do instniejącego df, colMeans() - liczy średnią kolumny

}

