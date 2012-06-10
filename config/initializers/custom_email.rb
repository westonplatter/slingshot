
# WARNING

# constants to be used throughout the applicaiton
# note, they take precedence over those in ../application.rb
# if constants are conflicting. Therefore, constantize with care.

# <A HREF="mailto:name@domain.net?subject=Whatever"> name@domain.net </A>

_email_address = "weston.platter@cojourners.com"
_app_name = Rails.application.class.to_s.split("::").first
_app_name_formatted = "[app help " + _app_name + "]"

EMAIL_HELP = "mailto:" + _email_address + "?subject=" + _app_name_formatted