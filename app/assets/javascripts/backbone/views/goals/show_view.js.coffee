App.Views.Goals ||= {}

class App.Views.Goals.ShowView extends Backbone.View
  template: JST["backbone/templates/goals/show"]
   
  render: ->
    $(this.el).html(@template(@model.toJSON() ))
    return this