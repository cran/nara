## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(grid)
library(nara)

## -----------------------------------------------------------------------------
nr <- nr_new(10, 10, fill = 'white')
class(nr)

## -----------------------------------------------------------------------------
png_file <- system.file("image", "deer-1.png", package="nara")
jpg_file <- system.file("image", "deer-1.jpg", package="nara")

## -----------------------------------------------------------------------------
nr <- fastpng::read_png(png_file, type = 'nativeraster')
class(nr)
plot(nr)

## -----------------------------------------------------------------------------
nr <- png::readPNG(png_file, native = TRUE)
class(nr)
plot(nr)

## -----------------------------------------------------------------------------
nr <- jpeg::readJPEG(jpg_file, native = TRUE)
class(nr)
plot(nr)

## ----eval=FALSE---------------------------------------------------------------
# fastpng::write_png(nr, "test.png")
# jpeg::writeJPEG(nr, "test.jpg")
# png::writePNG(nr, "test.png")

## -----------------------------------------------------------------------------
ras <- matrix(c('brown', 'darkblue', 'darkblue', 'brown'), 2, 2)
ras
class(ras)
grid.raster(ras, interpolate = FALSE)

## -----------------------------------------------------------------------------
nr <- nara::raster_to_nr(ras)
nr
class(nr)
plot(nr)

## -----------------------------------------------------------------------------
arr <- array(c(
  1, 1, 0,
  0, 0, 0,
  0, 0, 0, 
  1, 1, 0
), dim = c(2, 2, 3))

arr
class(arr)
grid.raster(arr, interpolate = FALSE)

## -----------------------------------------------------------------------------
nr <- nara::array_to_nr(arr)
nr
class(nr)
plot(nr)

