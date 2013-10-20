EmberRaffler.EntriesController = Ember.ArrayController.extend
  entries: []

  actions:
    addEntry: ->
      @pushObject Ember.Object.create name: @get('newEntryName')
      @set('newEntryName', '')

    drawWinner: ->
      @setEach('highlight', false)
      pool = @rejectBy('winner')
      if pool.length > 0
        entry = pool[Math.floor(Math.random() * pool.length)]
        entry.set('winner', true)
        entry.set('highlight', true)
