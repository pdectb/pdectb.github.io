# Load text

#txt = $blab.resource "kdv/page1.txt"
#$("#page1").html txt

#txt = $blab.resource "kdv/page2.txt"
#$("#page2").html txt

# wow

###
$("#mybook").wowBook
    height: 500
    width: 800
    pageNumbers: 0
    flipSounds: 0
    controls:
        next: '#next'
        back: '#back'
        first: '#first'
        last: '#last'
        slideShow: '#slideshow'
        flipSound: '#flipsound'
        fullscreen: '#fullscreen'
###

$("#pdes").wowBook
    height: 500
    width: 800
    pageNumbers: 0
    flipSound: 0
    hardcovers: true
    centeredWhenClosed: true
    controls:
        next: "#next"
        back: "#back"
        first: "#first"
        last: "#last"
        slideShow: "#slideshow"
        flipSound: "#flipsound"
        fullscreen: "#fullscreen"

$("#pdes").css(
    display: "none"
    margin: "auto"
    )

$("#pdes").fadeIn 1000



# Play movie

movie = new $blab.Movie "solitons", {N:256, h:4e-5}

setTimeout (->
    movie.initSoliton(-1, 800)
    movie.initSoliton(1, 200)
    ), 3000

