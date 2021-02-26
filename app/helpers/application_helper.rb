module ApplicationHelper
  def check_sign_up
    out = ''
    out << link_to('Sign Up', new_user_registration_path) unless user_signed_in?
    out.html_safe
  end

  def check_log_out
    out = ''
    out << link_to('Log Out', destroy_user_session_path, method: :delete) if user_signed_in?
    out.html_safe
  end

  def check_sign_in
    out = ''
    out << link_to('Sign In', new_user_session_path) unless user_signed_in?
    out.html_safe
  end

  def create_new_event
    out = ''
    out << link_to('Create New Event', new_event_path) if user_signed_in?
    out.html_safe
  end

  def members
    out = ''
    out << link_to('Members', users_path) if user_signed_in?
    out.html_safe
  end

  def my_events(current_user)
    out = ''
    out << link_to('My Events', user_path(current_user)) if user_signed_in?
    out.html_safe
  end
end
