class Board < ActiveRecord::Base
  has_many :pins, dependent: :destroy
end
