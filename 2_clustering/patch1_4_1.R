i<-1;j<-1;
#spilt by label
clusterset<-list();

for(j in 1:25){
  clusterset[[j]]<-list()
  a<-set_training$cluster[[j]]$label
  b<-set_training$summary[[j]]
  cc<-cbind(label=a,b)
  counter<-max(cc$label)
  for(i in 1:counter){
    clusterset[[j]][[i]]<-list()
    a<-subset(cc,cc$label==i)
    clusterset[[j]][[i]]$table<-a;
    times<-a$times
    stars<-a$stars_priv
    clusterset[[j]][[i]]$table$value<-times*stars
    x<-mean(a$lon)
    y<-mean(a$lat)
    clusterset[[j]][[i]]$centre<-c(x,y)

  } 
}

rm(i,j,x,y,a,b,counter,cc,stars,times)
