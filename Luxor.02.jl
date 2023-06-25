using Luxor

outputFile = "Luxor.02.png"
link = "https://juliagraphics.github.io/Luxor.jl/stable/example/examples/"

Drawing(1000, 1000, outputFile)

background("grey")

# print source link
origin(200,100) # origin of coordinate system
fontsize(24)
sethue("orange")
text(link)

# print filename
origin(200,250) # origin of coordinate system
sethue("blue")
fontsize(50)
text("Luxor.02.png")

# line
pt1 = Point(0.0,50.0)
pt2 = Point(600.0,50.0)
sethue("pink")
line(pt1,pt2,action = :stroke)

finish()

preview()
