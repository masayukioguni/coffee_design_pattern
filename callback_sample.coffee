class CallbackTest 
  callee: (callback) ->
    console.log('callee start')
    callback('hige')

  caller: ->
    @callee (callee_param) ->
      console.log('caller start')
      console.log(callee_param)

new CallbackTest().caller()