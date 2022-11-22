library(leaflet)
set.seed(1)
df <- data.frame(lat= runif(30, min = 25, max = 31), long=runif(30, min = 80, max = 86))
head(df)
df %>%
  leaflet( width = 900) %>%
  addTiles() %>%
  addMarkers(clusterOptions = markerClusterOptions(), popup = "Hi")
