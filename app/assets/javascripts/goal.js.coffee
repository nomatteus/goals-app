# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# MUST-HAVE TOOL: http://js2coffee.org/

$ ->
  # See here for options: http://jqueryui.com/demos/datepicker/
  $(".datepicker").datepicker 
    inline: true
    dateFormat: "yy-mm-dd"
    showButtonPanel: true
    changeYear: true
    yearRange: ":+20"
  
  $(".goal-list").sortable
    placeholder: "goal goal-highlight"
  $(".goal-list").disableSelection()