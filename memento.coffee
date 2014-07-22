class PreserveableText
    class Memento
        constructor: (@text) ->

    constructor: (@text) ->
        
    save: (newText) ->
    	memento = new Memento @text
    	@text = newText
    	memento
    
    restore: (memento) ->
        @text = memento.text

    display: ->
        console.log @text

pt = new PreserveableText "a"
pt.display()

memento = pt.save "A new string"
pt.display()

pt.save "Yet another string"
pt.display()

pt.restore memento
pt.display()
