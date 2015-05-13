class ReviewDecorator < Draper::Decorator
  delegate_all

  def author
    [object.firstname, object.lastname].join(' ')
  end

end
