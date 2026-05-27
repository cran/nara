## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo = FALSE------------------------------------------------------
library(nara)

## ----eval=FALSE---------------------------------------------------------------
# library(nara)
# w <- 320
# h <- 200
# 
# set.seed(1)
# N <- 20
# xs   <- runif(N, 0, w)
# ys   <- runif(N, 0, h)
# rs   <- runif(N, 2, 6)
# vx   <- rnorm(N, sd = 3)
# cols <- sample(heat.colors(N))
# 
# # Storage for animation frames
# anim <- list()
# 
# for (i in seq(30)) {
#   # create image
#   nr <- nr_new(w, h, fill = 'grey90')
# 
#   # update the x position and wraparound
#   xs <- xs + vx
#   xs <- ifelse(xs < 0, xs + w, xs)
#   xs <- ifelse(xs > w, xs - w, xs)
# 
#   # draw circles
#   nr_circle(nr, xs, ys, rs, cols)
# 
#   # store animatino frame
#   anim[[i]] <- nr
# }
# 
# nrs_to_gif(anim, "working/demo.gif")
# # nrs_to_mp4(anim, "working/demo.mp4")

## ----eval=FALSE---------------------------------------------------------------
# x11(..., type = 'dbcairo', antialias = 'none')
# dev.control(displaylist = 'inhibit')
# 
# for (i in seq(nframes)) {
#   nr <- generate_image_somehow()
#   dev.hold()
#   plot(nr)
#   dev.flush()
#   Sys.sleep(0.03) # Sleep maybe?
# }

