corr <- function(directory, treshold = 0){
    files <- list.files(directory)
    out <- vector()
    #   number_of_complete_obs
    noc <- complete(directory,1:length(files))
    for (i in 1:length(files)){
        if (noc[i,2] > treshold){
            rawdata <- read.csv(file.path(directory,files[i]))
            rawdata <- rawdata[complete.cases(rawdata),]
            out <- append(out,cor(rawdata[2],rawdata[3]))
        }
    } # otherwise we do not count
 out   
}

# tu na sztywno zapisany jest format danych - do funkcji cor() liczącej korelację bierzemy kolumny 2 i 3 z rawdata, wiemy że tam są wyniki pomiarów. 
# żeby to zrobić bardziej elegancko trzeba by poszukać kolumn po nazwach
# uwzględnianie tresholdu - wywołujemy funkcje complete liczącą ilość kompletnych rekordów w każdym pliku
# potem w if sprawdzamy wartość