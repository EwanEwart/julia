using Luxor

@drawsvg begin

    background("black")
    sethue("grey")

    move(O)

    rline(Point(120,0))
    rline(Point(0,120))
    rline(Point(-120,0))
    rline(Point(0,-120))

    closepath()

    rmove(Point(150,0))

    rline(Point(120,0))
    rline(Point(0,120))
    rline(Point(-120,0))
    rline(Point(0,-120))

    closepath()

    strokepath()
end
