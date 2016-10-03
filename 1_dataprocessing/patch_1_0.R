i<-1;j<-1;k<-1;

for(i in 1:25){
  #add categories to attribute
  welldone[[i]][[3]]$categories<-welldone[[i]][[4]]$categories
  #Split categories and create list business_categories
  a<-welldone[[i]][[3]]$categories
  a<-sub('^.','',a)
  a<-sub('.$','',a)
  len<-length(a)
  a<-as.list(a)
  #remove "'" from strings
  for (j in 1:len){
    if(a[[j]]!=""){
      a[[j]]<-strsplit(a[[j]],",");
      len1<-length(a[[j]][[1]]);
      if(len1>1){
        a[[j]][[1]]<-sub('^..', '',a[[j]][[1]]);
        a[[j]][[1]]<-sub('.$','',a[[j]][[1]]);
#      for(k in 2:len1){
#        a[[j]][[1]][[k]]<-sub('^.', '',a[[j]][[1]][[k]]);
#        a[[j]][[1]][[k]]<-sub('.$','',a[[j]][[1]][[k]]);
#     }
        }
      a[[j]][[1]][[1]]<-sub('^.', '',a[[j]][[1]][[1]]);
      a[[j]][[1]][[1]]<-sub('.$','',a[[j]][[1]][[1]]);
    }
  }
  welldone[[i]]$categories<-a;
  
  #delete "attribute." in headlines of frame business_attributes
  a<-names(welldone[[i]][[3]])
  a[3:17]<-sub('^...........','',a[3:17])
  names(welldone[[i]][[3]])<-a;
  
  rm(i,j,k,len,len1,a)
  }
