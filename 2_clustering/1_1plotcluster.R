#library(leaflet)


sum<-clusterset[[id]][[no]]$table
sum<-subset(sum,sum$temp!=0);

x<-sum$lon
y<-sum$lat
r<-sum$stars_priv
clr<-sum$temp
cls<-max(clr)+1;
cls1<-summary(as.factor(clr))

a<-test_input$pos[[id]][1]
b<-test_input$pos[[id]][2]

colorset=c('red','blue','green','navy','cyan','yellow','coral','white',
           'cpink','firebrick','firebrick1','darkolivegreen1','gold','moccasin',
           'papayawhip','yellow','violet','darkolivegreen1','plum2','darkseagreen1')

maptest<-leaflet()
maptest<-addTiles(maptest)
setView(maptest,lng=a,lat=b,zoom=5)
maptest=addCircleMarkers(maptest,lng = x,lat = y,
                         radius = 0.5*r^2,
                         color = colorset[clr],
                         stroke=T,fillColor = colorset[clr])
maptest
#####################################################
rm(x,y,a,b,clr,cls,cls1,colorset,r)
rm()