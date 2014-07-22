class StringSorter
 algorithm: (@algorithm) ->

 sort: (list) -> @algorithm list

bubbleSort = (list) ->
  console.log 'bubbleSort'

reverseBubbleSort = (list) ->
  console.log 'reverseBubbleSort'

unsortedList = ['e', 'b', 'd', 'c', 'x', 'a']
sorter = new StringSorter
sorter.algorithm = bubbleSort

sorter.sort unsortedList

sorter.algorithm = reverseBubbleSort
sorter.sort unsortedList
