App.Views.Goals ||= {}

class App.Views.Goals.GoalView extends Backbone.View
  template: JST["backbone/templates/goals/goal"]
  
  events:
    "click .destroy" : "destroy"
      
  tagName: "tr"
  
  destroy: () ->
    @model.destroy()
    this.remove()
    
    return false
    
  render: ->
    $(this.el).html(@template(@model.toJSON() ))    
    return this