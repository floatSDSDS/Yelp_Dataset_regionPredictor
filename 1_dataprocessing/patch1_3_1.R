i<-1;

for (i in 1:25){
#  create frame geo in set_training;
  temp1<-set_training$basic[[i]];
  temp2<-set_training$attributes[[i]];
  
  a<-summary(temp1$business_id,maxsum = length(temp1$longitude));
  a<-as.data.frame(a);
  names(a)<-"times";
  a$business_id<-rownames(a);
  
  b<-data.frame(lon=temp1$longitude,
                lat=temp1$latitude,
                star_pub=temp1$stars_busi,
                price=temp2$price,
                business_id=as.vector(temp1$business_id));
  b<-as.data.frame(b);
  b<-unique(b);
  
  d<-data.frame(star_priv=temp2$stars,
                business_id=as.vector(temp1$business_id));
  d<-ddply(d,.(business_id),summarize,stars_priv=mean(star_priv));
  
  cc<-merge(a,b,all=FALSE);
  set_training$geo[[i]]<-merge(cc,d,all=FALSE);
}



rm(temp1,temp2,a,b,d,cc,i);