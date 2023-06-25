using Luxor

# trassenachse = 0
# (2) abstandTrassenachseGrundlinie
# (3) abstandGrundlinieKulturart
# (4) hoeheKulturartenzeile
# (5) hoeheMinProfilkoerper
# ( ) offSetY_m ?
# ( ) max ( "aufhaltung_mast" + "mastlaenge" )
# mindestabstandMastbilder_m
#

@drawsvg begin

    background("black")
    sethue("grey")

    # data - Δ for LTB dialogue
    length = 250 # line length
    #= ( 2) =# abstandTrassenachseGrundlinie = 20                   # exists
    #= ( 3) =# abstandGrundlinieKulturart = 30                      # exists
    #= ( 4) =# hoeheKulturartenzeile = 40                           # exists
    #= ( 5) =# hoeheMinProfilkoerper = 40                           # exists
    #=      =# abstand_max_aufhaltung_plus_mast_this_profile = 0    # new
    #= (10) =# yMBOffset = 120                                      # new
    # max_mast_mastfuszpunkt_plus_max_trav_traversenhoehe = 120     # (10) new
    # abstand_max_aufhaltung_plus_mast_all_profiles = 120           # (10) new
    #= ( 6) =# mindestabstandMastbilder_m = 20                      # exists
    #= ( 7) =# mindestabstandTextleisteMaste_m = 70                 # MB exists
    #= ( 8) =# abstand_ObjektTexte = 20                             # new

    # aufhaltung_mast =
    # MAST -> Hoehe Mastfuszpunkt
    # +
    # TRAV -> Traversenhoehe
    # +
    # Traversenfahne, z.B. Tra. 126.17 (~ 3m (MU))

    # data points
    pt1 = O
    pt2 = Point(length, 0)

    pt3 = pt1 + Point(0, -abstandTrassenachseGrundlinie)
    pt4 = pt2 + Point(0, -abstandTrassenachseGrundlinie)

    pt5 = pt3 + Point(0, -abstandGrundlinieKulturart)
    pt6 = pt4 + Point(0, -abstandGrundlinieKulturart)

    pt7 = pt5 + Point(0, -hoeheKulturartenzeile)
    pt8 = pt6 + Point(0, -hoeheKulturartenzeile)

    pt9 = pt7 + Point(0, -hoeheMinProfilkoerper)
    pt10 = pt8 + Point(0, -hoeheMinProfilkoerper)

    pt11 = pt9 + Point(0, -yMBOffset)
    pt12 = pt10 + Point(0, -yMBOffset)

    pt13 = pt11 + Point(0, -mindestabstandMastbilder_m)
    pt14 = pt12 + Point(0, -mindestabstandMastbilder_m)

    pt15 = pt11 + Point(0, -mindestabstandTextleisteMaste_m)
    pt16 = pt12 + Point(0, -mindestabstandTextleisteMaste_m)

    pt17 = pt15 + Point(0, -mindestabstandTextleisteMaste_m)
    pt18 = pt16 + Point(0, -mindestabstandTextleisteMaste_m)

    # draw
    translate(-150, 150)

    sethue("orange")
    text("( ) trassenachse", pt1 - Point(-5, 5))
    sethue("grey")
    line(pt1, pt2, :stroke)

    sethue("orange")
    text("(2) abstandTrassenachseGrundlinie", pt3 - Point(-5, 5))
    sethue("grey")
    line(pt3, pt4, :stroke)

    sethue("orange")
    text("(3) abstandGrundlinieKulturart", pt5 - Point(-5, 5))
    sethue("grey")
    line(pt5, pt6, :stroke)

    sethue("orange")
    text("(4) hoeheKulturartenzeile", pt7 - Point(-5, 5))
    sethue("grey")
    line(pt7, pt8, :stroke)

    sethue("orange")
    text("(5) hoeheMinProfilkoerper", pt9 - Point(-5, 5))
    sethue("grey")
    line(pt9, pt10, :stroke)

    sethue("orange")
    text("(10) yMBOffset", pt11 - Point(-5, 5))
    sethue("grey")
    line(pt11, pt12, :stroke)

    sethue("orange")
    text("(6) mindestabstandMastbilder_m", pt13 - Point(-5, 5))
    sethue("grey")
    line(pt13, pt14, :stroke)

    sethue("orange")
    text("(7) mindestabstandTextleisteMaste_m", pt15 - Point(-5, 5))
    sethue("grey")
    line(pt15, pt16, :stroke)

    sethue("orange")
    text("(8) abstand_ObjektTexte", pt17 - Point(-5, 5))
    sethue("grey")
    line(pt17, pt18, :stroke)

end

