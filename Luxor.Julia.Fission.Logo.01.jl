using Luxor

Drawing(500,500,"Luxor.Julia.Fission.Logo.svg")

background("black")
setcolor("red")

origin()

circle(O,100,:fill) # radius = 100 points (as fonts);
# 72 points per inch, more than 3 points per mm

finish()

preview()
