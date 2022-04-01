class Filtertag < ApplicationRecord
  	belongs_to :user
    has_many :looks
end
