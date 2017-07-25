### script functional diversity in r ###

### packages and exemples ###

###------------------------------------------------------------------------------###

##  sites
# 1. http://eeb37.biosci.arizona.edu/~brian/ECOL596/Func_Div_Tutorial.pdf
# 2. https://daijiang.name/en/2014/05/11/functional-diversity-in-r/

###------------------------------------------------------------------------------###

## memory
rm(list = ls())
gc()
memory.size(limit = 1.75e13)

###------------------------------------------------------------------------------###

## packages
if(!require(pacman)) install.packages("pacman")
pacman::p_load(FD, vegan)

search()

###------------------------------------------------------------------------------###

## data
data(package = "FD")

dummy # Dummy Functional Trait Dataset
tussock # Functional Composition of Short-Tussock Grassland

###------------------------------------------------------------------------------###

## descriptions
# traits
dummy$trait # trait data frame of 8 functional traits on 8 species

# abundance
dummy$abun # matrix of abundances of the 8 species from 10 communities

###------------------------------------------------------------------------------###

## gower distance
dummy.dist <- gowdis(dummy$trait)
dummy.dist

# gowdis computes the Gower (1971) similarity coefficient exactly as
# described by Podani (1999),then converts it to a dissimilarity coefficient
# by using D = 1 - S. It integrates variable weights as described by
# Legendre and Legendre (1998)

###------------------------------------------------------------------------------###

dummy.abun <- dummy$abun
dummy.fdisp <- fdisp(dummy.dist, dummy.abun)

head(dummy.fdisp)
str(dummy.fdisp)

dummy.fdisp$eig
dummy.fdisp$vectors

###------------------------------------------------------------------------------###

dummy.dbFD <- dbFD(dummy$trait, dummy$abun) 


dummy.functcomp <- functcomp(dummy$trait, dummy$abun) 






