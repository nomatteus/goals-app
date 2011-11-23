class App.Models.Goal extends Backbone.Model
  paramRoot: 'goal'

  defaults:
    title: null
    state: null
  
class App.Collections.GoalsCollection extends Backbone.Collection
  model: App.Models.Goal
  url: '/goals'