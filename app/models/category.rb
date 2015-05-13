class Category < ActiveRecord::Base
  has_many :products

  validates_uniqueness_of :name, case_sensitive: true
end
