class UserDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def gravatar
    hash = Digest::MD5.hexdigest(object.email.downcase.strip)
    h.image_tag "http://www.gravatar.com/avatar/#{hash}?s=200", class: 'img-circle'
  end

  def fullname
    [user.firstname, user.lastname].join ' '
  end

end