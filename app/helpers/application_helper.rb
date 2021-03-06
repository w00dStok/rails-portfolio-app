module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", user_session_path) +
      "<br />".html_safe +
      (link_to "Register", new_user_registration_path)
    end
  end

  def source_helper
    if session[:source]
      greeting = "Thanks for visting from #{session[:source]}"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end
end
