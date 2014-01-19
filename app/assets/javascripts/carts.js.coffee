# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.addToCart = ->
  $('.add-product-to-cart').click (event) ->
    $.fn.disableProduct($('#'+$(this).data('product')))
    $.fn.updateCart($(this).data('product-id'))



$.fn.updateCart = (element) ->
  if element == null
    values = []
  else
    values = [element]
  $('.product-id-fields').each ->
    values.push($(this).val())
  $.ajax(
    type:'post'
    url:'/carts/update_cart'
    data:
      products:values
    dataType:'script'
  )
  event.preventDefault


$.fn.removeFromCart = ->
  $('.delete-products').click (event) ->
    $.fn.enableProduct($('#'+$(this).data('id-to-restore')))
    $(this).first().parents('.row-fluid.product-detail').remove();
    $.fn.updateCart(null)
    event.preventDefault()

$.fn.clearCart = ->
  $('#clear-cart').click (event) ->
    $('.delete-products').each ->
      $(this).trigger('click')
    event.preventDefault()





