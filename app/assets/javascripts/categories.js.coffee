# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$.fn.collapseCategory = ->
  $('.category_collapse').on 'click', (event) ->
    $this = $($(this).data('child'))
    if $this.hasClass('hidden')
      $this.slideDown(300)
      $this.removeClass('hidden')
      $(this).html('-')
    else
      $this.addClass('hidden')
      $this.slideUp(300)
      $(this).html('+')
    event.preventDefault()

$.fn.imageOnHover = ->
  $('.product').on 'mouseenter', ->
    $(this).addClass('border')
  $('.product').on 'mouseleave',->
    $(this).removeClass('border')


$.fn.closePopoverWithEscape = ->
  $(document).keydown (e) ->
    if (e.keyCode == 27)
      $('.product').popover('destroy')

$.fn.closePopoverWithHtml = ->
  $('html').click (event) ->
    unless $(event.target.parentElement).hasClass('popover')
      $('.product').popover('destroy')


$.fn.closePopover = (element) ->
  $(element+'_close').on 'click', (event) ->
    event.preventDefault()
    $(element).popover('destroy')

$.fn.showProduct = ->
  $('.product').on 'click', (event) ->
    $.fn.getProduct($(this),event)



jQuery ($) ->
  $('.category-chart').hide().addClass('hidden')
  $.fn.collapseCategory()
  $.fn.imageOnHover()
  $.fn.closePopoverWithEscape()
  $.fn.closePopoverWithHtml()
  $.fn.showProduct()

