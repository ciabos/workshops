module LinksHelper

 def links_depending_on_user
  if current_user
    render 'shared/logged_in_user'
  else
    render 'shared/no_user'
  end
 end

end