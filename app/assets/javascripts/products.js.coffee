# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.disableProduct = (product) ->
  product.addClass('disable-product')
  product.unbind('mouseenter')
  product.unbind('click')

$.fn.enableProduct = (product) ->
  product.removeClass('disable-product')
  product.bind 'mouseenter', ->
    $(this).addClass('border')