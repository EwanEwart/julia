using Luxor

@drawsvg begin

    background("black")

    sethue("grey")

    xa(x) = 0 # x-axis
    f(x) = -x + 3 # red
    g(x) = x + 5
    h(x) = 1 // 3 * x

    scale_1 = 10

    # data
    x1 = -10
    x2 = 10


    # translate(Point(10,10))
    # source ...
    # https://docs.juliahub.com/Luxor/HA9ps/2.6.0/transforms/
    transform([1 0 0 -1 0 0]) # reflects in xaxis => maths' coordinate system
    # rulers()

    scale(scale_1)
    # coordinate system
    sethue("grey")
    line(Point(x1, xa(x1)), Point(5, xa(x2)), :stroke)
    line(Point(0, x1), Point(0, x2), :stroke)
    # 
    sethue("red")
    line(Point(x1, f(x1)), Point(x2, f(x2)), :stroke)
    sethue("green")
    line(Point(x1, g(x1)), Point(5, g(x2)), :stroke)
    sethue("purple") # violet, pink, purple
    line(Point(x1, h(x1)), Point(5, h(x2)), :stroke)

    scale(1 / scale_1)
    sethue("cyan")
    circle(O, 1, :stroke)

    # relative lines / Δs
    move(O) # new path ...
    sethue("orange")
    for i in range(1,3)
        rline(50, 50) # ... using relative coordinates, Δs
        rline(50, -50) # ... using relative coordinates, Δs
    end
    
    
    print(currentpoint(),'\n') # tool currentpoint

    po = storepath() # tool: an array of path objjects
    for obj in po
        print(typeof(po),'\n') # Path
    end
    
    strokepath()
    
    print(currentpoint(),'\n') # tool currentpoint

end
