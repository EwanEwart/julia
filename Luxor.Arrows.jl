using Luxor

Drawing(400, 400)

origin(200, 200)
background("grey")

# draw origin
circle(0, 0, 5, action=:fill)

startPt = Point(0, 0)
endPt1  = Point(0, -65)
endPt2  = Point(100, -65)
arrow(startPt, endPt1)
arrow(startPt, endPt2, arrowheadlength=20, arrowheadangle=pi / 4, linewidth=0.3)
arrow(startPt, 100, π, π / 2, arrowheadlength=25, arrowheadangle=pi / 12, linewidth=1.25)

finish()

preview()
