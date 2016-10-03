i<-1;j<-1;k<-1;

#spilt list welldone to a training set and a test set

training<-welldone;
test<-welldone;

for (i in 1:25){
  #time order
  time<-welldone[[i]][[2]]$date
  len<-length(time);
  time<-order(time);
  t<-len-100;
  time1<-time[1:t];
  time2<-time[t+1:len];
  tester<-0;
  time1<-0;
  time2<-0;
  
  training[[i]]$categories<-NULL;
  test[[i]]$categories<-NULL;
}

for(i in 1:25){
  time<-welldone[[i]][[2]]$date
  len<-length(time);
  time<-order(time);
  t<-len-100;
  time1<-time[1:t];
  time2<-time[t+1:len];
  tester<-0;
#######################################################training
  #review_training
  a<-welldone[[i]][[2]];
  temp<-a;
  for(k in 1:t){
    o<-time1[k];
    for(j in 1:4){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }
  training[[i]][[2]]<-temp;
  tester=1;
  #attributes_training
  a<-welldone[[i]][[3]];
  temp<-a;
  for(k in 1:t){
    o<-time1[k];
    for(j in 1:20){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }
  training[[i]][[3]]<-temp;
  tester=2;
  
  #basic_training
  a<-welldone[[i]][[4]];
  temp<-a;
  for(k in 1:t){
    o<-time1[k];
    for(j in 1:13){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }  
  training[[i]][[4]]<-temp;
  tester=3;
  
  #categories_training
  tester=5;
###################################################################################  
  #review_test
  a<-welldone[[i]][[2]];
  temp<-a;
  for(k in 1:99){
    o<-time2[k];
    for(j in 1:4){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }
  test[[i]][[2]]<-temp;
  tester=6;
  
  #attributes_test
  a<-welldone[[i]][[3]];
  temp<-a;
  for(k in 1:99){
    o<-time2[k];
    for(j in 1:20){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }
  test[[i]][[3]]<-temp;
  tester=7;
  
  #basic_test
  a<-welldone[[i]][[4]];
  temp<-a;
  for(k in 1:99){
    o<-time2[k];
    for(j in 1:13){
      temp[[j]][[k]]<-a[[j]][[o]];
    }
  }
  test[[i]][[4]]<-temp;
  tester=8;
  
  
  #categories_test
#  a<-welldone[[i]][[5]];
#  temp<-a;
#  for(k in 1:99){
#    o<-time2[k];
#    temp[[k]]<-a[[o]];
#  }  
#  training[[i]][[5]]<-temp;
#  tester=tester+1;  
}
  ###################################################################################
  for(i in 1:25){
    time<-welldone[[i]][[2]]$date
    len<-length(time);
    time<-order(time);
    t<-len-100;
    for (j in 2:4){
      training[[i]][[j]]<-training[[i]][[j]][-c(t+1:len),];
      test[[i]][[j]]<-test[[i]][[j]][-c(100:len),];
      }
#    for (j in t+1:len) {
#      training[[i]][[5]][[j]]<=NULL;
#      }
#    for (j in 100:len) {
#      test[[i]][[5]][[j]]<=NULL;
#    }

}

rm(i,j,k,a,t,o,temp,len,time1,time2,time,tester);
rm(welldone);