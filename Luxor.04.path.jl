using Luxor

@drawsvg begin

    background("black")
    sethue("white")

    # path 1 : a line + cubic Bézier
    pt1 = Point(200, 0)
    pt2 = Point(250, 100)
    move(pt1) # start new path
    line(pt2)

    cpt1 = Point(150, 150,)
    cpt2 = Point(0, 100)
    cpt3 = Point(-200, -200)
    curve(cpt1, cpt2, cpt3)
    closepath()
    # fillpath()
    # fillstroke()
    strokepath() # no current point any more; empty path

    # path 2 : bezier tangents
    move(cpt3) # start new path
    line(cpt2)
    move(pt2)
    line(cpt1)
    closepath()
    strokepath() # no current point any more; empty path

    # label points
    sethue("green")
    text("Centre Coordinate System", O + Point(0, -10))
    circle(O, 5, :stroke,)

    sethue("red")
    text("pt 1", pt1 + Point(0, -10))
    circle(pt1, 5, :stroke)
    text("pt 2", pt2 + Point(0, -10))
    circle(pt2, 5, :stroke)


    sethue("orange")
    text("cpt 0", pt2 + Point(0, 20))

    text("cpt 1", cpt1 + Point(0, -10))
    circle(cpt1, 5, :stroke)

    text("cpt 2", cpt2 + Point(0, -10))
    circle(cpt2, 5, :stroke)

    text("cpt 3", cpt3 + Point(0, -10))
    circle(cpt3, 5, :stroke)

    sethue("brown")
    text("a cubic Bézier", Point(-200, 150))
end
