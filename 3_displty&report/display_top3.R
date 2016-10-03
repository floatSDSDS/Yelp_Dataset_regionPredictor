#library(leaflet)


colorset=c('red','blue','green')

sum<-clusterset[[id]][[no]]$table
top<-clusterset[[id]][[no]]$top_class$temp
sum<-subset(sum,sum$temp==top)


x<-sum$lon
y<-sum$lat
r<-sum$value
clr<-sum$temp
cls<-max(clr)+1;
cls1<-summary(as.factor(clr))


a<-mean(x)
b<-mean(y)
cenx<-1
ceny<-1
for(i in 1:length(top)){
  temp<-subset(sum,sum$temp==top[i])
  cenx[i]<-mean(temp$lon)
  ceny[i]<-mean(temp$lat)
}



colorset=c('red','blue','green','navy','cyan','yellow','coral','white',
           'cpink','pink1','pink2','pink3',
         'pink4','firebrick','firebrick1')

maptest<-leaflet()
maptest<-addTiles(maptest)
setView(maptest,lng=a,lat=b,zoom=5)
maptest=addCircleMarkers(maptest,lng = x,lat = y,
                         radius = sqrt(r),
                         color = colorset[clr],
                         stroke=T)
addCircles(maptest,lng =cenx, lat = ceny,
                          radius = rad,
                         stroke=T
)
maptest
#####################################################
#rm(x,y,a,b,clr,cls,cls1,colorset,r)