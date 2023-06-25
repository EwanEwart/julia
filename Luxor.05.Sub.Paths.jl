using Luxor

# build hole

@drawsvg begin

    background("black")
    sethue("grey")

    # path counter clockwise
    move(O)
    line(Point(0, 100))
    line(Point(100, 100))
    line(Point(100, 0))
    closepath()

    # path counter clockwise : no hole
    # newsubpath() # optional
    # move(25, 25)
    # line(Point(25, 75))
    # line(Point(75, 75))
    # line(Point(75, 25))
    # closepath()

    # path clockwise
    newsubpath() # optional
    move(25, 25)
    line(Point(75, 25))
    line(Point(75, 75))
    line(Point(25, 75))
    closepath()

    fillpath()
    # strokepath()

    sethue("green")
    circle(O, 5, :stroke)
    # strokepath()

end
