i<-1;
test_input<-list();

for(i in 1:25){
  test_input$user_id[[i]]<-set_test$user_id[[i]]
  temp<-set_test$basic[[i]]
  temp<-as.data.frame(summary(temp$state))
  temp<-subset(temp,temp==max(temp))
  test_input$resident[[i]]<-rownames(temp);
  
  

}

for(i in 1:25){
  x<-set_test$basic[[i]]$longitude
  y<-set_test$basic[[i]]$latitude
  x<-mean(x)
  y<-mean(y)
  
  test_input$pos[[i]]<-c(x,y)
}

for(i in 1:25){
  names(set_training$cluster[[i]])<-c("lon","lat","label")
}