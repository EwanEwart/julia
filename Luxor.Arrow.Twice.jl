using Luxor

Drawing(400, 400)

origin(200, 200)
background("grey")

pts = ngon(Point(0, 0), 100, 8, vertices=true)

sethue("mediumvioletred")
arrow
(
      pts[2:5]...
    , :stroke
    , startarrow=false
    , finisharrow=true
)

sethue("cyan4")
arrow
(
      pts[3:6]...
    , startarrow=true
    , finisharrow=true
)

sethue("midnightblue")
arrow
(
      pts[[4, 2, 6, 8]]...
    , :stroke
    , startarrow=true
    , finisharrow=true
    , arrowheadangle=π / 6
    , arrowheadlength=35
    , linewidth=1.5
)



finish()

preview()
