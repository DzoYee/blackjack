# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.Game extends Backbone.Model
  initialize: ->
    @set 'deck', deck = @get('passinDeck')
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    @get('dealerHand').on 'gameover', => 
      @gameOver()
      


  gameOver: ->
    if @get('dealerHand').scores()[0] > @get('playerHand').scores()[0]
      console.log("compare")
      @get('dealerHand').trigger("Won")
      @get('playerHand').trigger("Loss")
    else
      console.log("compare")
      @get('dealerHand').trigger("Loss")
      @get('playerHand').trigger("Won")
      

