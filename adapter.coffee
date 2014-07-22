class NullSorter
  sort: (data,order) ->

class RandomSorter
  sort: (data) ->
    console.log 'random sort'
    return data

class ReverseSorter
  sort: (data) ->
    console.log 'reverse sort'
    return data

class SorterAdapter
  constructor: (@sorter) ->

  sort: (data,order) ->
    @sorter.sort data

class AwesomeGrid 
  constructor: (@datasourse)->
    @sort_order = 'ASC'
    @sorter = new NullSorter

  setCustomSorter: (@customSorter) ->
    @sorter = @customSorter

  sort: () ->
    @datasource = @sorter.sort @datasource, @sort_order

agrid = new AwesomeGrid ['a','b','c','d','e','f']
agrid.setCustomSorter new SorterAdapter(new RandomSorter)
agrid.sort()

agrid.setCustomSorter new SorterAdapter(new ReverseSorter)
agrid.sort()