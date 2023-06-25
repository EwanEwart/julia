using Luxor

function triangle(t)
    # triangle
    sethue("grey")
    move(Point(100, 0))
    line(Point(0, -100))
    line(Point(-100, 0))
    closepath()
    strokepath()

    # mark origin
    sethue("cyan")
    circle(O, 5, :stroke)
    text(t,O+Point(10,-10))
end

@drawsvg begin

    background("black")

    sethue("red")
    text("Translations",O+Point(0,-150))

    rotate(π)
    triangle("t1")

    rotate(-π)
    translate(150, 150)
    triangle("t2")

    translate(-300, 0)
    triangle("t3")

    translate(150, 150)
    triangle("t4")

end 640 640

