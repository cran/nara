## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(nara)

## -----------------------------------------------------------------------------
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Define image size 
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
w <- h <- 300
th <- 16 # text height

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Define 5 points within the canvas
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ax <- w/2     ; ay <- 0 + th
bx <- w/2     ; by <- h/2     
cx <-     th/2; cy <- h/2     
dx <- w/2     ; dy <- h - th/2           
ex <- w - th/2; ey <- h/2

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Label the points in an image
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
nr <- nr_new(w, h)
nr_text_mono(nr, ax, ay, 'A', fontsize = th)
nr_text_mono(nr, bx, by, 'B', fontsize = th)
nr_text_mono(nr, cx, cy, 'C', fontsize = th)
nr_text_mono(nr, dx, dy, 'D', fontsize = th)
nr_text_mono(nr, ex, ey, 'E', fontsize = th)

plot(nr)

## ----echo = FALSE-------------------------------------------------------------
nr <- nr_new(w, h)

nr_polygon(nr, c(ax, bx, cx), c(ay, by, cy), fill = "blue")
nr_polygon(nr, c(bx, dx, ex), c(by, dy, cy), fill = "red")

plot(nr)

## -----------------------------------------------------------------------------
# define all the vertex coordinates
vertices <- rbind(
  c(ax, bx, cx, dx, ex),
  c(ay, by, cy, dy, ey)
)

# Define the indices.  Each column in this matrix represents 1 triangle.
# The three numbers reprsent the column index in the `vertices` data
indices <- rbind(
  # 1  2
  c(1, 2),
  c(2, 4),
  c(3, 5)
)


nr <- nr_new(w, h)
nr_tri_mesh(nr, vertices, indices, c('blue', 'red'))

plot(nr)

## -----------------------------------------------------------------------------
coords <- rbind(
  # <<<  1 >>>    <<<  2 >>>>
  c(ax, bx, cx,   bx, dx, ex),
  c(ay, by, cy,   by, dy, ey)
)

nr <- nr_new(w, h)
nr_tri_coords(nr, coords, color = c('blue', 'red'))

plot(nr)

