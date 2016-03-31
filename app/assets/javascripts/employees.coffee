$(document).ready ->
	$form = $('#new_employee')

	$form.on "ajax:error", (e, xhr, status, error) ->
	  $('.form__error').remove()
	  
	  for k, v of xhr.responseJSON
	    selector = "[name='employee[#{k}]']"
	    msg = "<span class='form__error'>#{v.join(', ')}</span>"
	    
	    $(msg).insertBefore( selector)
  
	$form.on "ajax:success", (e, data, status, xhr) ->
	  row = "<tr><td>#{data.full_name}</td><td>#{data.position.name}</td></tr>"
	  $('#employees_list').prepend(row)
	  
	  $('#modal').modal('hide')
