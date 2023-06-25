using Luxor

Drawing(500,500,"Luxor.Julia.Fission.Logo.svg")

background("black")
setcolor("red")

origin()

# rulers()

# circle(O,100,:stroke) # radius = 100 points (as fonts);
# 72 points per inch, more than 3 points per mm

# corners = ngon(O,80,3;action=:stroke) # Vector{Point}
radius=80
sides=3
vertices = ngon(O,radius,sides,vertices=true) # Vector{Point}

print(typeof(vertices),'\n') # Vector{Point}
print(vertices)

# long winded
# circle(vertices[1],10,action=:fill)
# circle(vertices[2],10,action=:fill)
# circle(vertices[3],10,action=:fill)

# shorter
circle.(vertices,10,action=:fill)

finish()

preview()


