using Luxor

@drawsvg begin
    background("black")
    sethue("grey")

    # a new path
    move(O)
    line(Point(0, 100))
    line(Point(100, 100))
    line(Point(100, 0))
    closepath()

    # purple fill
    sethue("purple")
    fillpreserve() # fill & preserve path

    # current path is still here

    # pink stroke
    sethue("pink")

    strokepath()

    # path closed, empty

    # mark origin
    sethue("cyan")
    circle(O, 5, :stroke)
end
