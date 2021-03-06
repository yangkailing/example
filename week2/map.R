#繪製台灣的地圖
library(ggmap)
library(mapproj)
library(maps)
map <- get_map(location = 'Taiwan', zoom = 7,language = "zh-TW", maptype = "roadmap")
ggmap(map)
#讀檔並轉換為度數表示
uv <- read.csv(file="UV_20180711201715.csv")
lon.deg <- sapply((strsplit(as.character(uv$WGS84Lon), ",")), as.numeric)
uv$lon <- lon.deg
lat.deg <- sapply((strsplit(as.character(uv$WGS84Lat), ",")), as.numeric)
uv$lat <- lat.deg
#把資料加入地圖中
library(ggmap)
map <- get_map(location = 'Taiwan', zoom = 7)
ggmap(map, darken = c(0.5, "white")) + 
  geom_point(aes(x = lon, y = lat, size = UVI), data = uv)+
  facet_grid( ~ PublishAgency)

