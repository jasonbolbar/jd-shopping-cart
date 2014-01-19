# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.disableProduct = (product) ->
  product.addClass('disable-product')
  product.unbind('mouseenter')
  product.off('click');

$.fn.enableProduct = (product) ->
  product.removeClass('disable-product')
  product.bind 'mouseenter', ->
    $(this).addClass('border')
  product.on 'click', (event) ->
    $.fn.getProduct($(this),event)

$.fn.getProduct = (element,event) ->
  event.preventDefault()
  url = element.data('path')
  $.ajax
    type:'get'
    url:url
    dataType:'script'