
i<-1;

set_training<-list();
for (i in 1:25){
  temp<-1;
  len<-length(training[[i]][2]$date);
 ##################################################training
  ########################################attribute
   ##################################wifi,noise
  wifi<-training[[i]][[3]]$Wi.Fi;
  temp[wifi=="paid"]<-0;
  temp[wifi=="free"]<-2;
  temp[is.na(temp)]<-1;
  wifi<-temp;
  noise<-training[[i]][[3]]$Noise.Level;
  temp[noise=="loud"]<-1;
  temp[noise=="quiet"]<-3;
  temp[noise=="very_loud"]<-0;
  temp[is.na(temp)]<-2;
  noise<-temp;
   ##################################parking
   ##################################price.range,stars,business_id
  price<-as.numeric(training[[i]][[3]]$Price.Range);
  price[is.na(price)]<-0;
  stars<-training[[i]][[3]]$stars;
  business_id<-training[[i]][[3]]$business_id;
  
####################################
  
    attributes<-data.frame(wifi,noise,price,stars,business_id);
  ########################################basic
  ##################################lon,lat,rev_c,stars,bs_id
    longitude<-as.vector(training[[i]][[4]]$longitude);
    longitude<-as.numeric(longitude);
    latitude<-as.vector(training[[i]][[4]]$latitude);
    latitude<-as.vector(latitude);
    stars_busi<-training[[i]][[4]]$stars;
    review_count<-training[[i]][[4]]$review_count;
    business_id<-training[[i]][[4]]$business_id;
  ##################################state,city
    state<-training[[i]][[4]]$state;
    city<-training[[i]][[4]]$city;
    basic<-data.frame(longitude,latitude,stars_busi,
                      review_count,state,city,business_id);
  set_training$user_id[[i]]<-training[[i]][[1]];
  set_training$basic[[i]]<-basic;
  set_training$attributes[[i]]<-attributes;
  

  }