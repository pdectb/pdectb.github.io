#!vanilla

class $blab.BasicAnimation
    
    constructor: (@spec)->
        @n = 0
        @animateId = null
        @snapshotFunction = @spec.snapshotFunction
        @numSnapshots = @spec.numSnapshots
        @strobeFunction = @spec.strobeFunction
        @strobeInterval = @spec.strobeInterval
        @delay = @spec.delay
        
    stopAnimation: ->
        clearTimeout @animateId if @animateId
        @animateId = null

    animate: ->
        @stopAnimation()
        snapshot = =>
            @snapshotFunction()
            if @n>@numSnapshots
                @stopAnimation()
                return 
            @strobeFunction() if @n%@strobeInterval==0
            @n++
            if @animateId
                @animateId = setTimeout (-> snapshot()), @delay

        @animateId = setTimeout (-> snapshot()), 0
        #@animateId = setInterval (-> snapshot()), @delay