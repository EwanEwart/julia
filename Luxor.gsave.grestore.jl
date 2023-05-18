using Luxor


function triangular()
    move(Point(100,0))
    line(Point(0,-100))
    line(Point(-100,0))
    closepath()
    strokepath()
end

@drawsvg begin
    background("black")
    sethue("grey")
    for Δx in -250:20:200, Δy in -250:20:200
        gsave()
            # translate(Δx,Δy)
            translate(Point(Δx,Δy)) 
            scale(0.1)
            rotate(rand()*2π)
            triangular()
        grestore()
    end
end
