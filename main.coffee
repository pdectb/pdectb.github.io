$("#blab_container").css padding: 0
$blab.noGitHubRibbon = true

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

$("#cover").click ->
    $.wowBook("#pdes").advance()
