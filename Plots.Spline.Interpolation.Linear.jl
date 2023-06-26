using Plots

# Linear Spline Interpolation
# Linear Spline Interpolation
# Linear Spline Interpolation

# The launch of a rocket

# time / height measured (control points)
t1 = 0.0    ; vt1 = 0.0
t2 = 10.0   ; vt2 = 227.04
t3 = 15.0   ; vt3 = 362.78
t4 = 20.0   ; vt4 = 517.35
t5 = 22.5   ; vt5 = 602.97
t6 = 30.0   ; vt6 = 901.67

# linear splines (interpolants) == Linear Spline Interpolation
#
v1(t) = vt1 + (vt2-vt1)/(t2-t1)*(t-t1)
v2(t) = vt2 + (vt3-vt2)/(t3-t2)*(t-t2)
v3(t) = vt3 + (vt4-vt3)/(t4-t3)*(t-t3)
v4(t) = vt4 + (vt5-vt4)/(t5-t4)*(t-t4)
v5(t) = vt5 + (vt6-vt5)/(t6-t5)*(t-t5)

function v(t)
    iv = 0
    if t1 <= t < t2
        iv = 1
        rv = v1(t)
    elseif  t2 <= t < t3
        iv = 2
        rv = v2(t)
    elseif t3 <= t < t4
        iv = 3
        rv = v3(t)
    elseif t4 <= t < t5
        iv = 4
        rv = v4(t)
    elseif t5 <= t <= t6
        iv = 5
        rv = v5(t)
    end
    println("iv ",iv," : ", rv)
    return rv
end

# calc spline x data for plotting
r1 = range(t1,t2,2)
r2 = range(t2,t3,2)
r3 = range(t3,t4,2)
r4 = range(t4,t5,2)
r5 = range(t5,t6,2)

# calc spline y data for plotting
y1 = v1.(r1)
y2 = v2.(r2)
y3 = v3.(r3)
y4 = v4.(r4)
y5 = v5.(r5)

rv1 = v(15.0) # vt3 == 362.78 # fine
rv2 = v(16.0) # 393.7         # fine
rv3 = v(20.0) # vt4 == 517.35 # fine

plot([r1,r2,r3,r4,r5],[v1,v2,v3,v4,v5])

# (time, height)
# Vector{Tuple{Float64, Float64}} (alias for Array{Tuple{Float64, Float64}, 1})
m = [
     (t1,vt1)
    ,(t2,vt2)
    ,(t3,vt3)
    ,(t4,vt4)
    ,(t5,vt5)
    ,(t6,vt6)
]
scatter!(
    m
    , markersize=[3,4,5,6,7,8]
    , markercolor=[:red,:green,:blue,:orange,:pink,:violet]
)
