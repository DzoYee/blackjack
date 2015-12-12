class window.CardView extends Backbone.View
  className: 'card'

  template: _.template ''

  initialize: -> @render()

  render: ->

    @$el.children().detach()
    @$el.html @template @model.attributes
    @$el.css 'background-image', "url(img/cards/#{@model.get('rankName')}-#{@model.get('suitName')}.png)"
    @$el.css 'background-image', "url(img/card-back.png)" unless @model.get 'revealed'