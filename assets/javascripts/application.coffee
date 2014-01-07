# dashing.js is located in the dashing framework
# It includes jquery & batman for you.
#= require dashing.js

#= require ./d3-3.2.8.js
#= require ./jquery.knob.js
#= require ./rickshaw-1.4.3.min.js
#= require_tree ../../widgets

console.log("Yeah! The dashboard has started!")

Dashing.on 'ready', ->
  Dashing.widget_margins ||= [5, 5]
  Dashing.widget_base_dimensions ||= [300, 360]
  Dashing.numColumns ||= 4

  contentWidth = (Dashing.widget_base_dimensions[0] + Dashing.widget_margins[0] * 2) * Dashing.numColumns

  Batman.setImmediate ->
    $('.isotope').isotope
      itemSelector: '.widget_parent_1x1, .widget_parent_2x1, .widget_parent_1x2'