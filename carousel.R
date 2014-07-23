library(devtools)
install_github('rstudio/htmltools')
install_github('ramnathv/htmlwidgets')
install_github('ramnathv/slickCarousel')


library(htmltools)
library(htmlwidgets)
library(slickCarousel)

images = sprintf('https://raw.githubusercontent.com/NateByers/imageCarousel/master/images/image%s.png', 1:4) 
img_div <- lapply(images, function(src){
  tags$div(class = 'image', tags$img(src = src))
})
slickCarousel(content = img_div, config = list(dots = TRUE))
