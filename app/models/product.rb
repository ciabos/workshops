class Product < ActiveRecord::Base
  delegate :name, to: :category, prefix: true, allow_nil: true
  belongs_to :category
  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :price, :description
  validates :price, format: { with: /\A((\d){1,})((\.|\,)\d{1,2})?\z/ }

  def average_rating
    reviews.average(:rating)
  end
end
