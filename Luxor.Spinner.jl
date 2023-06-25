using Luxor

spinner = Movie(400, 400, "spinner")


function frame(scene::Scene, framenumber::Int64)
    background("grey")
    norm_framenumber = rescale(
          framenumber
        , scene.framerange.start
        , scene.framerange.stop
        , 0, 1
    )
    rotate(norm_framenumber * 2π)
    juliacircles(100)
end


animate(
      spinner
    , [
        Scene(spinner, frame, 1:60)
      ]
    , creategif=true
    , pathname="juliaspinner.gif"
)


# https://juliagraphics.github.io/Luxor.jl/stable/tutorial/simple-animation/

