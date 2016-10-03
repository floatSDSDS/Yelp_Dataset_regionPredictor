#cluster underneath
i<-1;j<-1;

e=0.008
MinP=5
setwd("L:\\dataset\\welldone\\cluster_under")

for (i in 1:25){
  len<-length(clusterset[[i]])
  for (j in 1:len){
    a<-clusterset[[i]][[j]]$table
    x<-a$lon
    y<-a$lat
    z<-data.frame(x,y)
    name<-paste("id",as.character(i),".no",as.character(j),".jpeg");
    ds <- dbscan(z, eps=e, MinPts=MinP);
    temp<-ds$cluster
    temp<-as.data.frame(temp)
    clusterset[[i]][[j]]$table<-cbind(a,temp)
    clusterset[[i]][[j]]$ds<-ds
    jpeg(file=name);
    plot(ds,z)
    dev.off()
  }
}
rm(business_A)
rm(a,z,temp,i,j,len,name)
rm(x,y,ds)