class window.App extends Backbone.Model
  

  initialize: ->
    @set 'deck', startDeck = new Deck()
    @gameStart(startDeck)
  gameStart: (params) ->
    $('body').children().remove()
    @set 'firstGame', firstGame = new Game({passinDeck: params})
    new GameView(model: firstGame).$el.appendTo 'body'
    @get('firstGame').on 'reset', =>
      @gameStart(params)  
  
new App()



