using Luxor, Colors, Random # hide

Drawing(600, 200, "Luxor.Transform.and.Matrices/01.png") # hide

background("black") # hide

Random.seed!(1) # hide

setline(1) # hide / set the line width [points]

origin() # reset origin, etc
for i in range(0, step=30, length=6)
    sethue(HSV(i, 1, 1)) # from Colors
    setopacity(0.5)
    circle(O, 40, :fillpreserve) # fill the path, but don't empty the current path
    setcolor("black")
    strokepath()
    translate(50, 0)
end

finish() # hide
nothing # hide
