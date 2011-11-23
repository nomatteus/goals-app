App.Views.Goals ||= {}

class App.Views.Goals.IndexView extends Backbone.View
  template: JST["backbone/templates/goals/index"]
    
  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render')
    
    @options.goals.bind('reset', @addAll)
   
  addAll: () ->
    @options.goals.each(@addOne)
  
  addOne: (goal) ->
    view = new App.Views.Goals.GoalView({model : goal})
    @$("tbody").append(view.render().el)
       
  render: ->
    $(@el).html(@template(goals: @options.goals.toJSON() ))
    @addAll()
    
    return this