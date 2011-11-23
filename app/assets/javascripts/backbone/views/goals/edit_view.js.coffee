App.Views.Goals ||= {}

class App.Views.Goals.EditView extends Backbone.View
  template : JST["backbone/templates/goals/edit"]
  
  events :
    "submit #edit-goal" : "update"
    
  update : (e) ->
    e.preventDefault()
    e.stopPropagation()
    
    @model.save(null,
      success : (goal) =>
        @model = goal
        window.location.hash = "/#{@model.id}"
    )
    
  render : ->
    $(this.el).html(this.template(@model.toJSON() ))
    
    this.$("form").backboneLink(@model)
    
    return this