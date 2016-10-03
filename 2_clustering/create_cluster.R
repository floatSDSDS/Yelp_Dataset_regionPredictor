#cluster surface
for (i in 1:25){
  x<-set_training$summary[[i]]$lon;
  y<-set_training$summary[[i]]$lat;
  z<-data.frame(x,y);
  e=0.5;MinP=5;
  name<-paste("eps",as.character(e),as.character(MinP),".no",as.character(i),".jpeg");
  ds <- dbscan(z, eps=e, MinPts=MinP);
  temp<-ds$cluster
  temp<-as.data.frame(temp)

  set_training$cluster[[i]]<-data.frame(z,temp)
  set_training$geo[[i]]<-z
  set_training$ds[[i]]<-ds

  jpeg(file=name);
  plot(ds,z)
  dev.off()
}

rm(e,i,x,y,MinP,name,z,temp,ds)

