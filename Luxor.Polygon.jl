using Luxor

@drawsvg begin
    
    background("black")
    sethue("grey")

    vPts = 30 .* [ Point(x,sin(x))  for x in -2π:0.1:2π ] # Vector(point)
    
    poly(vPts,:stroke)
    
    # translate(0,100)

    polymove!(vPts,O,Point(0,100))
    # polymove!(vPts,O,Point(-100,-100))
    # polymove!(vPts,O,Point(100,-100))

    # polyreflect!(vPts,Point(0,0),Point(100,0))
    # polyreflect!(vPts)

    # polyrotate!(vPts,π/2)

    # polyscale!(vPts,0.5)
    
    poly(vPts,:fill)

    print(typeof(vPts)) # Vector(point)
end
