# Load text

txt = $blab.resource "kdv/page1.txt"
$("#page1").html txt

txt = $blab.resource "kdv/page2.txt"
$("#page2").html txt

# wow

$("#mybook").wowBook
    height: 1000
    width: 1200
    centeredWhenClosed: true
    hardcovers: true
    turnPageDuration: 500
    numberedPages: [2, -3]

# Play movie

movie = new $blab.Movie "solitons", {N:256, h:4e-5}

setTimeout (->
    movie.initSoliton(-1, 800)
    movie.initSoliton(1, 200)
    ), 3000

