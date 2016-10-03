temp<-clusterset[[id]][[no]]$plot
plot_ly(temp, x = temp.lon , y = temp.lat, z = windowsum, 
        type = "mesh3d", mode = "markers")

#plot_ly(temp, x = temp.lon , y = temp.lat, z = temp.value, 
#        type = "mesh3d", mode = "markers")


rm(temp)