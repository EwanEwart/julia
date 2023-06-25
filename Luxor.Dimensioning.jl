using Luxor

Drawing(500, 500)

origin(250, 250)
background("grey")



setline(0.75)
sethue("purple")
pentagon = ngonside(O, 120, 5, vertices=true)
poly(pentagon, action=:stroke, close=true)
circle.(pentagon, 2, action=:fill)
fontsize(6)
label.(split("12345", ""), :NE, pentagon)
fontface("Menlo")
fontsize(10)
sethue("grey30")

dimension(O, pentagon[4],
    fromextension=[0, 0])

dimension(pentagon[1], pentagon[2],
    offset=-60,
    fromextension=[20, 50],
    toextension=[20, 50],
    textrotation=2π / 5,
    textgap=20,
    format=(d) -> string(round(d, digits=4), "pts"))

dimension(pentagon[2], pentagon[3],
    offset=-40,
    format=string)

dimension(pentagon[5], Point(pentagon[5].x, pentagon[4].y),
    offset=60,
    format=(d) -> string("approximately ", round(d, digits=4)),
    fromextension=[5, 5],
    toextension=[80, 5])

dimension(pentagon[1], midpoint(pentagon[1], pentagon[5]),
    offset=70,
    fromextension=[65, -5],
    toextension=[65, -5],
    texthorizontaloffset=-5,
    arrowheadlength=5,
    format=(d) ->
        begin
            if isapprox(d, 60.0)
                string("exactly ", round(d, digits=4), "pts")
            else
                string("≈ ", round(d, digits=4), "pts")
            end
        end)

dimension(pentagon[1], pentagon[5],
    offset=120,
    fromextension=[5, 5],
    toextension=[115, 5],
    textverticaloffset=0.5,
    texthorizontaloffset=0,
    textgap=5)



finish()

preview()
