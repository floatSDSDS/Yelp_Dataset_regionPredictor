#switch variable latitude to type numeric
for (i in 1:25){
  set_training[[2]][[i]]$latitude<-as.vector(set_training[[2]][[i]]$latitude);
  set_training[[2]][[i]]$latitude<-as.numeric(set_training[[2]][[i]]$latitude);
  set_test[[2]][[i]]$latitude<-as.vector(set_test[[2]][[i]]$latitude);
  set_test[[2]][[i]]$latitude<-as.numeric(set_test[[2]][[i]]$latitude);
}