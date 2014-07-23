library(htmltools)
library(htmlwidgets)
library(slickCarousel)

images = sprintf('http://kenwheeler.github.io/slick/img/fonz%s.png', 1:3)
img_div <- lapply(images, function(src){
  tags$div(class = 'image', tags$img(src = src))
})
slickCarousel(content = img_div, config = list(dots = TRUE))