## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE--------------------------------------------------------
set.seed(1)
library(nara)

## -----------------------------------------------------------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Setup a drawing canvas and an image to use as a mask
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
w <- 300
h <- 300
canvas <- nr_new(w, h, fill = 'lightblue')
mask   <- nr_new(w, h, fill = 'transparent')

# Set the top-left area of the mask to be the active area by making it 
# not transparent
nr_rect(mask, x=0, y=0, w=w/2, h=h/2)
plot(mask)

# Attach the mask to the canvas
nr_mask_begin(canvas, mask)
{
  # Draw random circles
  xs <- runif(50, 0, w)
  ys <- runif(50, 0, h)
  nr_circle(canvas, xs, ys, 20, rainbow(50))
}
nr_mask_end(canvas) # Finalise the masked operation


plot(canvas)

