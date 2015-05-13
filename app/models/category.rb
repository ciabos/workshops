class Category < ActiveRecord::Base
  has_many :products
  validates :name, presence: true, allow_nil: false, allow_blank: false
  validates_uniqueness_of :name, case_sensitive: true
end
