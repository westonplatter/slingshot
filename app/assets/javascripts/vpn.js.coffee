$ ->
  
  $(document).ready ->
    $('input[type="submit"]').attr('disabled', 'disabled')
    value = $('#vpn_password').val()
    if value 
      validation_check_all(value)
  
  $('#vpn_password').on 'keyup', (e) ->
    validation_check_all(@value)
  
  validation_check_all = (value) ->  
    validation = []
    
    $.when(
      validate_equal_sign value, validation
      validate_uppercase  value, validation
      validate_length     value, validation
      validate_digits     value, validation
      validate_lowercase  value, validation
      validate_symbol     value, validation
    ).done (e) ->
      control_submit_button(validation)
      
  
  control_submit_button = (validation) ->
    sum = 0 
    
    $.each(validation, (index, element) ->
      if element == true
        sum += 1
        if sum == validation.length
          $('input[type="submit"]').removeAttr('disabled')
        else
          $('input[type="submit"]').attr('disabled', 'disabled')
    )
    
  validate_equal_sign = (string, validation) ->
    html_id = '#v_equal_sign'
    pattern = new RegExp("=")
  
    if pattern.exec(string)
      $(html_id).css('color', 'red')
      validation.push false
    else
      $(html_id).css('color', 'green')
      validation.push true
      
  validate_uppercase = (string, validation) ->
    html_id = '#v_uppercase'
    pattern = new RegExp("[A-Z]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
      validation.push true
    else
      $(html_id).css('color', 'red')
      validation.push false
      
  validate_lowercase = (string, validation) ->
    html_id = '#v_lowercase'
    pattern = new RegExp("[a-z]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
      validation.push true
    else
      $(html_id).css('color', 'red')  
      validation.push false
    
  validate_length = (string, validation) ->
    html_id = '#v_length'
    
    if string.length == 8
      $(html_id).css('color', 'green')
      validation.push true
    else
      $(html_id).css('color', 'red')
      validation.push false
      
  validate_digits = (string, validation) ->
    html_id = '#v_digits'
    pattern = new RegExp("[0-9]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
      validation.push true
    else
      $(html_id).css('color', 'red')
      validation.push false
    
  validate_symbol = (string, validation) ->
    html_id = '#v_symbol'
    pattern = new RegExp(/!|@|#|\$|%|\^|&|\*|\(|\)|\+|\-|_|\+|=|\{|\}|\[|\]|\;|:|\"|'|<|>|,|\.|\\|\/|\?|~|`|\|/)
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
      validation.push true
    else
      $(html_id).css('color', 'red')        
      validation.push false
