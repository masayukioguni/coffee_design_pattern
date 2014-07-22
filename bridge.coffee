class TextSaver
  constructor: (@filename,@options) ->
  save: (data) ->
    console.log "TextSaver save"

class CloudSaver extends TextSaver
  constructor: (@filename,@options) ->
    super @filename, @options
  save: (data) -> 
    console.log "CloudSaver save " + data

class FileSaver extends TextSaver
  constructor : (@filename,@options) ->
    superr @filename, @options
  save: (data) ->
    console.log "FileSaver save " + data

isCloud = true 
saver = if isCloud? 
  new CloudSaver "a", url: "aa"
else 
  new FileSaver "b", dir: "bb"

saver.save "text"
