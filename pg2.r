thisarray<-c(1:24)
multiarray<-array(c(1:24), dim =c(4,3,2))
multiarray
multiarray<-array(thisarray, dim=c(4,3,2))
multiarray[2,3,2]
multiarray<-array(thisarray, dim=c(4,3,2))
2%in%multiarray
multiarray<-array(thisarray, dim=c(4,3,2))
dim(multiarray)
multiarray<-array(thisarray ,dim=c(4,3,2))
length(multiarray)
multiarray<-array(thisarray, dim=c(4,3,2))
for(x in multiarray){
  print(x)
}

