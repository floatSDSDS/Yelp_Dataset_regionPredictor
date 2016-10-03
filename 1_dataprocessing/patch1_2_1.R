i<-1;

set_test<-list();
for (i in 1:25){
  temp<-1;
  len<-length(test[[i]][2]$date);
  ##################################################test
  ########################################attribute
  ##################################wifi,noise
  wifi<-test[[i]][[3]]$Wi.Fi;
  temp[wifi=="paid"]<-0;
  temp[wifi=="free"]<-2;
  temp[is.na(temp)]<-1;
  wifi<-temp;
  noise<-test[[i]][[3]]$Noise.Level;
  temp[noise=="loud"]<-1;
  temp[noise=="quiet"]<-3;
  temp[noise=="very_loud"]<-0;
  temp[is.na(temp)]<-2;
  noise<-temp;
  ##################################parking
  ##################################price.range,stars,business_id
  price<-as.numeric(test[[i]][[3]]$Price.Range);
  price[is.na(price)]<-0;
  stars<-test[[i]][[3]]$stars;
  business_id<-test[[i]][[3]]$business_id;
  
  ####################################
  attributes<-data.frame(wifi,noise,price,stars,business_id);
  
  
  ########################################basic
  ##################################lon,lat,rev_c,stars,bs_id
  longitude<-as.vector(test[[i]][[4]]$longitude);
  longitude<-as.numeric(longitude);
  latitude<-as.vector(test[[i]][[4]]$latitude);
  latitude<-as.vector(latitude);
  stars_busi<-test[[i]][[4]]$stars;
  review_count<-test[[i]][[4]]$review_count;
  business_id<-test[[i]][[4]]$business_id;
  ##################################state,city
  state<-test[[i]][[4]]$state;
  city<-test[[i]][[4]]$city;
  basic<-data.frame(longitude,latitude,stars_busi,
                    review_count,state,city,business_id);
  set_test$user_id[[i]]<-training[[i]][[1]];
  set_test$basic[[i]]<-basic;
  set_test$attributes[[i]]<-attributes;
  
}

rm(attributes,basic,business_id,city,i,j,k,latitude,longitude,len,noise,
   price,review_count,stars_busi,stars,state,temp,wifi);
rm(test,training);