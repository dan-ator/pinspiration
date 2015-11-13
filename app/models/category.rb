class Category < ActiveRecord::Base
  has_many :tags
  has_many :pins, through: :tags
end
