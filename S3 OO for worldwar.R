build_city <- function(name, nr_regions) {
  city <- list(name=name, bombings=data.frame(region_id=1:nr_regions, hits=numeric(nr_regions)))
  class(city) <- "city"
  return(city)
}
london <- build_city(name="London", nr_regions=576)
london
simulate_bombings <- function(obj, nr_raids) {
  UseMethod("simulate_bombings")
}
simulate_bombings.city <- function(obj,nr_raids){
  for(raid in 1:nr_raids) {
    for(region in 1:nrow(obj$bombings)) {
      obj$bombings$hits[region] <- obj$bombings$hits[region] + rpois(1,lambda=0.93)
  
    }
  }
  obj
}
bombed_london <- simulate_bombings(london,71)
bombed_london
O(raids*region)
library(ggplot2)
plot.city <- function(obj , ...){
  cat("Plotting", obj$name, "...")
  gp <- ggplot(obj$bombings)+aes(x = region_id, y = hits)+ geom_bar(
                                       colour = "blue", stat = "identity")
  gp
}
plot(bombed_london)
