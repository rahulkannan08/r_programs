music_genere <- factor(c("Jazz","Rock","Classic",
                         "Classic","Pop","Jazz","Rock","Jazz"))
music_genere
music_genere[3]
length(music_genere)
levels(music_genere)<-c(levels(music_genere),"Melody")
music_genere[9]<-"Melody"
music_genere
levels(music_genere)<-c(levels(music_genere),"Hit")
music_genere[10]<-"Hit"
music_genere
music_genere[11]<-"Jazz"
music_genere
music_genere<-music_genere[-3]
music_genere
