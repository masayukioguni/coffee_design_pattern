class HTMLParser
  constructor: ->
    @type = "HTML parser"

class MarkdownParser
  constructor: ->
    @type = "Markdown parser"

class JSONParser
  constructor: ->
    @type = "JSON parser"


class ParserFactory
  makeParser: (filename) ->
    matches = filename.match /\.(\w*)$/
    extension = matches[1]
    switch extension
      when "html" then new HTMLParser
      when "htm" then new HTMLParser
      when "markdown" then new MarkdownParser
      when "md" then new MarkdownParser
      when "json" then new JSONParser

factory = new ParserFactory

console.log factory.makeParser("a.html").type

console.log factory.makeParser("a.md").type
console.log factory.makeParser("a.json").type
