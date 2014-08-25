module ApplicationHelper
def user_login_links
    if user_signed_in?
        (link_to "Edit Account", edit_user_registration_path)+
        (link_to "Log Out", destroy_user_session_path, method: :delete)
    else
      link_to "Log In", new_user_session_path
    end
end

def user_account_edit
  if user_signed_in?
        (link_to "Edit Account", edit_user_registration_path)
  else
    link_to "Log In", new_user_session_path  
  end
end

def user_account_logout
  if user_signed_in?
    (link_to "Log Out", destroy_user_session_path, method: :delete)
  else
    link_to "Log In", new_user_session_path  
  end
end





end