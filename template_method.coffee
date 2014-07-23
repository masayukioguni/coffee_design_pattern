class Document
  produceDocument: ->
    @produceHeader()
    @produceBody()
  produceHeader: ->
  produceBody: ->

class DocWithHeader extends Document
  produceHeader: ->
    console.log "DocWithHeader produceHeader"

  produceBody: ->
    console.log "DocWithHeader produceBody"

class DocWithoutHeader extends Document
  produceBody: ->
    console.log "DocWithoutHeader produceBody"

docs = [new DocWithHeader, new DocWithoutHeader]
doc.produceDocument() for doc in docs