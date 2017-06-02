# Better example
crimes <- data.frame(state = tolower(rownames(USArrests)), USArrests)
crimesm <- reshape2::melt(crimes, id = 1)
if (require(maps)) {
  states_map <- map_data("state")
  ggplot(crimes, aes(map_id = state)) +
    geom_map(aes(fill = Murder), map = states_map) +
    expand_limits(x = states_map$long, y = states_map$lat) 
  

}

last_plot() + coord_map()
mapmapmap <-  ggplot(crimesm, aes(map_id = state)) +
  geom_map(color = "black", aes(fill = value), map = states_map) +
  scale_fill_gradient2(low = "#f2f2f2", mid = "#ffa366", high = "#cc0000", midpoint = 200, space = "Lab", na.value = "grey50", guide = "colourbar") +
  expand_limits(x = states_map$long, y = states_map$lat) +
  facet_wrap( ~ variable)

plot_ly(mapmapmap) 
htmlwidgets::saveWidget(as.widget(p), "memorable.html")

ggplot() + geom_map(data = districtpassavg63, aes(map_id = District, fill = PassMean63), 
                    map = np_dist) + expand_limits(x = np_dist$long, y = np_dist$lat) + scale_fill_gradient2(low = muted("red"),
                    mid = "white", midpoint = 50, high = muted("blue"), limits = c(0, 100))

chicago_neighborhoods <- fortify(chicago_neighborhoods, region = "PRI_NEIGH")
chicago_neighborhoods$id <- toupper(chicago_neighborhoods$id)

ggplot() + 
  geom_map(data = Chicago.Census,
  aes(map_id = Community.Area, fill = Difference), map = chicago_neighborhoods) +  
  expand_limits(x = chicago_neighborhoods$long, y = chicago_neighborhoods$lat)