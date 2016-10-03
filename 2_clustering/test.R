temp<-set_test$basic[[id]]
x1<-temp$longitude
y1<-temp$latitude
len<-length(x1)
temp$result<-FALSE

for (i in 1:lentop){
  for (j in 1:99){
    dis<-dist(cenx[i],ceny[i],x1[j],y1[j]) 
    temp$dis[j]<-dis
      if(dis<rad[i]||temp$result[j]==TRUE){
        temp$result[j]<-TRUE
      }
      else{
        temp$result[j]<-FALSE
    }
  }
}
r<-temp$result
result<-data.frame(result,r)
  
rm(x1,y1,len,i,j)
View(temp)
View(result)