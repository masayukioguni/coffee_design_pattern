incrementers = (() ->
  value = 0
  singleIncrementer = () ->
    value += 1
  doubleIncrementer = () ->
    value += 2

  commands = 
    single: singleIncrementer
    double: doubleIncrementer
    value: -> value
)()

class RunsAll
    constructor: (@commands...) ->
    run: -> command() for command in @commands

runner = new RunsAll(incrementers.single, 
					  incrementers.double,
					  incrementers.single,
					  incrementers.double)
runner.run()
console.log incrementers.value()

