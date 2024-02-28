install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.473386, lat=33.985156,label="Ocean Front Walk", radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.472590, lat=33.985405,label="Muscle Beach",     radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.473176, lat=33.986269,label="Drum Circle",      radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")

m




m <- addMarkers(m, lng=-122.2766163, lat=37.8130267, popup="Tariq Home")
m <- addMarkers(m, lng=-122.2824423029704, lat=37.814089001028336, popup="Ghost Town Brewery")
m <- addMarkers(m, lng=-122.26729465955792, lat=37.811398920630324, popup="Viridian")
m <- addMarkers(m, lng=-122.2699575257101, lat=37.806706723654116, popup="Cafe Van Kleef")
m <- addMarkers(m, lng=-122.28684672240966, lat=37.79986864117156, popup="Old Kan Beer and Co")
m <- addMarkers(m, lng=-122.28489407442152, lat=37.817194534121704, popup="Soba Ichi")
m <- addMarkers(m, lng=-122.27204092891375, lat=37.81251592653612, popup="Starline Social Club")
m <- addMarkers(m, lng=-122.27310150878701, lat=37.80010940078003, popup="Have a Heart")
m <- addMarkers(m, lng=-122.26761519028969, lat=37.80781202459698, popup="Cookies")
m <- addMarkers(m, lng=-122.26995742626355, lat=37.81296333114528, popup="Blum")
m <- addMarkers(m, lng=-122.26769959518964, lat=37.81433028419347, popup="ECO")
m <- addMarkers(m, lng=-122.26020866031836, lat=37.812429879187754, popup="Rose Mary Jane")
m <- addMarkers(m, lng=-122.24489598863055, lat=37.810188945012484, popup="Oakanna")
m