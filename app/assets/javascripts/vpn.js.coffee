$ ->
  
  $(document).ready ->
    value = $('#vpn_password').val()
    
    validate_equal_sign value
    validate_uppercase  value  
    validate_length     value
    validate_digits     value
    validate_lowercase  value
    validate_symbol     value
    
  $('#vpn_password').on 'keyup', (e) ->
    validate_equal_sign @value
    validate_uppercase  @value
    validate_length     @value
    validate_digits     @value
    validate_lowercase  @value
    validate_symbol     @value
    
  validate_equal_sign = (string) ->
    html_id = '#v_equal_sign'
    pattern = new RegExp("=")
  
    if pattern.exec(string)
      $(html_id).css('color', 'red')
    else
      $(html_id).css('color', 'green')
      
  validate_uppercase = (string) ->
    html_id = '#v_uppercase'
    pattern = new RegExp("[A-Z]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
    else
      $(html_id).css('color', 'red')
  
  validate_lowercase = (string) ->
    html_id = '#v_lowercase'
    pattern = new RegExp("[a-z]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
    else
      $(html_id).css('color', 'red')  
    
  validate_length = (string) ->
    html_id = '#v_length'
    
    console.log string
    
    if string.length == 8
      $(html_id).css('color', 'green')
    else
      $(html_id).css('color', 'red')
      
  validate_digits = (string) ->
    html_id = '#v_digits'
    pattern = new RegExp("[0-9]")
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
    else
      $(html_id).css('color', 'red')
    
  validate_symbol = (string) ->
    html_id = '#v_symbol'
    pattern = new RegExp(/!|@|#|\$|%|\^|&|\*|\(|\)|\+|\-|_|\+|=|\{|\}|\[|\]|\;|:|\"|'|<|>|,|\.|\\|\/|\?|~|`|\|/)
    
    if pattern.exec(string)
      $(html_id).css('color', 'green')
    else
      $(html_id).css('color', 'red')        
