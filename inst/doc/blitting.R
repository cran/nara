## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
set.seed(1)

## ----setup, echo = FALSE------------------------------------------------------
library(nara)

## -----------------------------------------------------------------------------
library(nara)

# Create a canvas to draw on
w <- 300
h <- 300
nr <- nr_new(w, h, 'grey90')

# Place a deer on the canvas
nr_blit(nr, deer[[1]], w/2, h/2)

plot(nr)

## -----------------------------------------------------------------------------
# Create a canvas to draw on
nr <- nr_new(w, h, 'grey90')

# Place a deer on the canvas at many locations
xs <- runif(20, 0, w)
ys <- runif(20, 0, h)
nr_blit(nr, deer[[1]], xs, ys)

plot(nr)

## -----------------------------------------------------------------------------
# Create a canvas to draw on
nr <- nr_new(w, h, 'grey90')

# Place a deer on the canvas at many locations
xs <- runif(20, 0, w)
ys <- runif(20, 0, h)
angles <- runif(20, 0, 2*pi)
scales <- runif(20, 0.5, 2)
nr_blit(nr, deer[[1]], xs, ys, angle = angles, scale = scales)

plot(nr)

## -----------------------------------------------------------------------------
head(tileset_config)

w <- 70 * 11
h <- 70 * 8
nr <- nr_new(w, h, fill = 'lightblue')
nr_blit_multi(nr, tileset, config = tileset_config)

plot(nr)

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
  # Draw random deer on the image - 
  xs <- runif(50, 0, w)
  ys <- runif(50, 0, h)
  nr_blit(canvas, deer[[1]], xs, ys)
}
nr_mask_end(canvas) # Finalise the masked operation


plot(canvas)

