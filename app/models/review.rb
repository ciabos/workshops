class Review < ActiveRecord::Base
  delegate :title, to: :product, prefix: true, allow_nil: true
  belongs_to :product
  belongs_to :user

  validates_presence_of :content, :rating, :user_id
  delegate :firstname, :lastname, to: :user
end
