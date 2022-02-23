library(tidyverse)
library(spotifyr)
library(ggplot2)
library(dplyr)
library(plotly)

OG <- get_playlist_audio_features("", "2WJJSs9WY3zaOPKHNKHAMK")
Ghosts <- get_playlist_audio_features("", "1q8Tw6AvQ3K17zOhjZ8D0B")
OG
Ghosts

jointdataset <- rbind(OG, Ghosts)
jointdataset
ggplot(jointdataset, aes(x = track.popularity, y = playlist_name)) + geom_point()

fig <- plot_ly(jointdataset, x=~tempo, y=~danceability, z=~energy, type="scatter3d", mode="markers", color =~playlist_name, size=1)
fig
