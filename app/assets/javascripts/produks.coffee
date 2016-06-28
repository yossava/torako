# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  subcategories = $('#produk_subcategory_id').html()
  $('#produk_category_id').change ->
    category = $('#produk_category_id :selected').text()
    options = $(subcategories).filter("optgroup[label='#{category}']").html()
    if options
      $('#produk_subcategory_id').html(options)
    else
      $('#produk_subcategory_id').empty()


