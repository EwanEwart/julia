using Luxor, Colors

Drawing(500, 500, "Luxor.Julia.Fission.Logo.svg")

background("black")
setcolor("red")

origin()

# rulers()

# circle(O,100,:fill) # radius = 100 points (as fonts);
# 72 points per inch, more than 3 points per mm

# corners = ngon(O,80,3;action=:stroke) # Vector{Point}
radiusNgon = 80 # radius polygon
radiusCircle = 10 # radius circle
sidesPolygon = 3 # sides of polygon

const colours = (
      Luxor.julia_green
    , Luxor.julia_red
    , Luxor.julia_purple
    , Luxor.julia_blue
)

for i in 1:6
    setcolor(colours[mod1(i, end)])
    rotate(i * deg2rad(5))
    corners = ngon(
        O
        , radiusNgon + radiusCircle*i
        , sidesPolygon
        , vertices=true
    ) # Vector{Point}
    circle.(corners, radiusCircle, action=:fill)
    # print(typeof(corners)) # Vector{Point}
end


finish()

preview()
