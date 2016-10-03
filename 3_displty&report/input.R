i<-1
id<-25


x1<-test_input$pos[[id]][1]
y1<-test_input$pos[[id]][2]
len<-length(clusterset[[id]])
dis<-vector(length=len)
for (i in 1:len){
  x2<-clusterset[[id]][[i]]$centre[1]
  y2<-clusterset[[id]][[i]]$centre[2]
  dis[[i]]<-dist(x1,y1,x2,y2)
}

no<-dis==min(dis)
x1<-c(1:len)
no<-x1[no]

dist <- function(x1,y1,x2,y2){
  dist <- sqrt((x1-x2)^2 + (y1-y2)^2)
  return(dist)
}


rm(i,x1,y1,x2,y2,len,dis)