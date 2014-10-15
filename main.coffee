$("#pdes").wowBook
    height: 500
    width: 900
    pageNumbers: 0
    flipSound: 0
    hardcovers: true
    centeredWhenClosed: true
    gutterShadow: false
    controls:
        next: "#next"
        back: "#back"
        first: "#first"
        last: "#last"
        slideShow: "#slideshow"
        flipSound: "#flipsound"
        fullscreen: "#fullscreen"

movie = new $blab.Movie "solitons", "stack",  {N:256, h:4e-5}

setTimeout (->
    movie.initSoliton(-1, 800)
    movie.initSoliton(1, 200)
    ), 3000

