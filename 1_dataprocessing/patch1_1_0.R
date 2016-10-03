i<-1;

#change factor date into Date date
for(i in 1:25){
  welldone[[i]][[2]]$date<-as.Date(welldone[[i]][[2]]$date,"%Y-%m-%d");
  welldone[[i]][[3]]$date<-as.Date(welldone[[i]][[3]]$date,"%Y-%m-%d");
}

rm(i);