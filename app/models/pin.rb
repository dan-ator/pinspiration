class Pin < ActiveRecord::Base
  belongs_to :board
  has_many :categories, through: :tags
  has_many :tags
end
