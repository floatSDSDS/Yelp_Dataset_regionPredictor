i<-1;j<-1;k<-1;count<-1;g<-1

library(plyr)
for (i in 1:25){
  len<-length(clusterset[[i]])
  for(j in 1:len){
    temp<-subset(clusterset[[i]][[j]]$table,clusterset[[i]][[j]]$table$temp!=0)
    if(is.na(temp$lon[1])){
    }
    else{
#      maxi<-max(temp$temp)
      d<-ddply(temp,.(temp),summarize,sum=sum(value))
      if (length(d$sum)>3){
        d<-d[order(d$sum,decreasing = T),]
        d<-d[1:3,]
        clusterset[[i]][[j]]$top_class<-d
      }
      len1<-length(d$temp)#1~3
      clusterset[[i]][[j]]$top_class<-d
      center<-matrix()
      rad<-vector()
      for(count in 1:len1){
        lon<-temp[temp$temp==d$temp,]
        lat<-lon$lat
        lon<-lon$lon
        x<-mean(lon$lon)
        y<-mean(lon$lat)
        center<-rbind(center,c(x,y))
        xmax<-max(lon)
        ymax<-lon[lat==xmax]
        r<-dist(x,y,xmax,ymax)
        rad<-c(rad,r)
      }
      clusterset[[i]][[j]]$top_center<-center
    }
  }
  }
#rm(table,plot,temp)