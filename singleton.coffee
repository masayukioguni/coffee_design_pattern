class Singleton
  instance = null

  class PrivateClass
    constructor: (@msg) ->
    echo: -> 
      console.log @msg

  @get: (msg) ->
    instance ?= new PrivateClass(msg)

a = Singleton.get 'A'
a.echo()

b = Singleton.get 'B'
b.echo()

console.log Singleton.instance # => undefined
console.log a.instance # => undefined
console.log Singleton.PrivateClass # => undefined